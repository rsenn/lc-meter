
//extern int buffer_stubborn_read(int (*op)(),const char* buf, unsigned len);

#include "buffer.h"

int
buffer_feed() {
  if (buffer.p==buffer.n) {
    int w;
    if ((w=buffer_stubborn_read(buffer.op,buffer.x,buffer.n))<0)
      return -1;
    buffer.n=(unsigned)w;
    buffer.p=0;
  }
  return (int)(buffer.n-buffer.p);
}

extern int buffer_stubborn(int (*op)(),const char* buf, unsigned len);

extern int
buffer_flush() {
  register unsigned p;
  register int r;
  if (!(p=buffer.p)) return 0; /* buffer already empty */
  buffer.p=0;
  r=buffer_stubborn(buffer.op,buffer.x,p);
  if (r>0) r=0;
  return (int)r;
}

int
buffer_get(char* x,unsigned len) {
  int done;
  int blen;
  done=0;
  if ((int)len < 0) len=(int)(((unsigned)-1)>>1);
  while (len) {
    if ((blen=buffer_feed())<0) return blen;
    if (blen==0) break;
    if (blen>=(int)len)
      blen=(int)len;
    byte_copy(x,(unsigned)blen,buffer.x+buffer.p);
    buffer.p+=(unsigned)blen;
    len-=(unsigned)blen;
    x+=blen;
    done+=blen;
  }
  return done;
}

int
buffer_getc(char* x) {
  if (buffer.p==buffer.n) {
    register int blen;
    if ((blen=buffer_feed())<=0) return blen;
  }
  *x=buffer.x[buffer.p];
  ++buffer.p;
  return 1;
}

int
buffer_getn(char* x,unsigned len) {
  unsigned blen;

  if ((int)len < 0) len=((unsigned)-1)>>1;
  for(blen=0;blen<len;++blen) {
    register int r;
    if ((r=buffer_getc(x))<0) return r;
    if (r==0) break;
    ++x;
  }
  return (int)blen;
}

int
buffer_put(const char* buf,unsigned len) {
  if (__unlikely(len>buffer.n-buffer.p)) {	/* doesn't fit */
    if (buffer_flush()==-1) return -1;
    if (len>buffer.n) {
      if (buffer_stubborn(buffer.op,buf,len)<0) return -1;
      return 0;
    }
  }
  memcpy(buffer.x+buffer.p, buf, len);
  buffer.p+=len;
  return 0;
}

int
buffer_putalign(const char* buf,unsigned len) {
  unsigned tmp;
  while (len>(tmp=buffer.n-buffer.p)) {
    byte_copy(buffer.x+buffer.p, tmp, buf);
    buffer.p+=tmp;
    buf+=tmp;
    len-=tmp;
    if (buffer_flush()<0) return -1;
  }
  byte_copy(buffer.x+buffer.p, len, buf);
  buffer.p+=len;
  return 0;
}


extern int buffer_stubborn(int (*op)(),const char* buf, unsigned len);

int
buffer_putflush(const char* x,unsigned len) {
  /* Since we know we are going to flush anyway, let's see if we can
   * optimize a bit */
  if (!buffer.p)	/* if the buffer is empty, just call buffer_stubborn directly */
    return buffer_stubborn(buffer.op,x,len);
  if (buffer.op==write) {
    struct iovec v[2];
    int w;
    unsigned cl=buffer.p+len;
    v[0].iov_base=buffer.x;
    v[0].iov_len=buffer.p;
    v[1].iov_base=(char*)x;
    v[1].iov_len=len;
    while ((w=writev(v,2))<0) {
      if (errno == EINTR) continue;
      return -1;
    }
    if (__unlikely((unsigned)w!=cl)) {
      /* partial write. ugh. */
      if ((unsigned)w<v[0].iov_len) {
	if (buffer_stubborn(buffer.op,v[0].iov_base+w,v[0].iov_len-w) ||
	    buffer_stubborn(buffer.op,v[1].iov_base,v[0].iov_len)) return -1;
      } else {
	w-=v[0].iov_len;
	return buffer_stubborn(buffer.op,v[1].iov_base+w,v[1].iov_len-w);
      }
    }
    buffer.p=0;
    return 0;
  }
  if (buffer_put(x,len)<0) return -1;
  if (buffer_flush()<0) return -1;
  return 0;
}

int
buffer_putnlflush() {
  static char nl='\n';
  return buffer_putflush(&nl,1);
}

int
buffer_puts(const char* x) {
  return buffer_put(x,strlen(x));
}

int
buffer_putsalign(const char* x) {
  return buffer_putalign(x,strlen(x));
}

int
buffer_putsflush(const char* x) {
  return buffer_putflush(x,strlen(x));
}

int
buffer_putspace() {
  static char space=' ';
  return buffer_put(&space,1);
}
