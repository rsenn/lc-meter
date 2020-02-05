#!/bin/sh
MYDIR="${0%/*}"
MYNAME="${0##*/}"; MYNAME="${MYNAME%.*}"

IFS="
"
CPPFLAGS=
CFLAGS=

pushv()
{
  eval "shift;$1=\"\${$1:+\"\$$1\${IFS}\"}\$*\""
}
pushv_unique()
{
  local __VARNAME=$1 __ARG IFS=${IFS%${IFS#?}};
  shift;
  for __ARG in "$@";
  do
    if eval "! isin \$__ARG \${$__VARNAME}"; then
      pushv "$__VARNAME" "$__ARG";
    else
      return 1;
    fi;
  done
}
isin() {
 (needle="$1";
  while [ "$#" -gt 1 ]; do
    shift;
    test "$needle" = "$1" && exit 0;
  done;
  exit 1)
}


#exec_bin()
#{
#  (IFS=" $IFS"; CMD="$*"
#  O="${A:-$1}"
#  X="$1"
#  shift
#  for ARG; do
#    case "$ARG" in
#      *\ *) O="${O:+$O }\"$ARG\"" ;;
#      *) O="${O:+$O }$ARG" ;;
#    esac
#  done
#  echo "$O" 1>&2
#  "$X" "$@" || { echo "EXEC: $X failed ($?)" 1>&2; exit $?; })
#}
exec_bin() {
  ( O="${A:-$1}"
  X="$1"
  shift
  for ARG; do
    case "$ARG" in
      --*=*\ *) O="${O:+$O }${ARG%%=*}=\"${ARG#*=}\"" ;;
      *\ *) O="${O:+$O }\"$ARG\"" ;;
      *) O="${O:+$O }$ARG" ;;
    esac
  done
  echo "$O" 1>&2
exec "$X" "$@")
}

echocmd() {
  O=
  for ARG; do
    case "$ARG" in
      *=*\ *) ARG="${ARG%%=*}='${ARG#*=}'" ;;
      *\ *) ARG="'$ARG'" ;;
    esac
    O="${O:+$O }$ARG"
  done
  echo "$O"
}

xc8_driver() {
  while [ $# -gt 0 ]; do
	case "$1" in
	   @*) CFG="${1#@}"; shift ;;
	   *.exe|*/xc8|xc8) EXE="$1"; shift ;;
	   -C | -P | -Q | -S | \
--asmlist | --chipinfo | --echo | --maxipic | --nodel | --nofallback | --pass1 | --pre | --proto | --scandep | --shroud | \
--ASMLIST | --CHIPINFO | --ECHO | --MAXIPIC | --NODEL | --NOFALLBACK | --PASS1 | --PRE | --PROTO | --SCANDEP | --SHROUD) pushv CFLAGS "$1"; shift ;;
	   -v) VERBOSE=true; shift ;;
	   -V) pushv CFLAGS -V ; shift ;;
	  -I) pushv CPPFLAGS -I "$2"; shift 2 ;; -I*) pushv CPPFLAGS -I "${1#-I}"; shift ;;
	  -D) pushv CPPFLAGS -D "$2"; shift 2 ;; -D*) pushv CPPFLAGS -D"${1#-D}"; shift ;;
	  --OUTDIR=* | --outdir=*) OUTDIR=${1#*=}; shift ;;
	  -*=*) pushv CFLAGS "$1"; shift ;;
	  -*) pushv CFLAGS "$1"; shift ;;
	  *) pushv ARG "$1"; shift ;;
	esac
  done

#  XC8_CPP_CONFIG="$MYDIR/xc8-cpp.config"

  set -- $CPPFLAGS
  while [ $# -gt 1 ]; do
	case "$1" in
	  -D_XTAL_FREQ=*) pushv CFLAGS "$1" ;;
	  -D__18f*) SYSINC="pic18.h" ;;
	  -D__1?f*) SYSINC="pic.h" ;;
	esac
	shift
  done

 case "$EXE" in
	 xc8) INCDIR=$(which "$EXE" | sed 's,/bin.*,/include,' ) 
		 type cygpath && INCDIR=$(cygpath -am "$INCDIR")  ;;
	 *) 	 
  INCDIR="${EXE%/bin/*}/include"
  ;;
esac

  if ! type "$EXE" 2>/dev/null 1>/dev/null && [ -z "$EXE" -o ! -e "$EXE" ]; then
    return 1
  fi

  echo "INCDIR='$INCDIR'" 1>&2
  
  
  if [ -n "$CFG" -a -e "$CFG" ]; then
    set -- @$CFG
  else  
	set -- 	   -D{__PICCPRO__,__PICC__}=1 \
		 -D__XC{,8}{,__}=1 \
		 -p1 \
		 --disambiguate=0 \
		 --c++11 \
		 -S "$INCDIR" \
		 -F "$SYSINC"
  case "$EXE" in
  *xc8*) ;;
  *picc*) 
	set -- 	   -DHI_TECH_C=1 "$@" 
	;;
	esac
   fi
 (     
 set -e
  A="${CPP_XC8}" \
  exec_bin "$MYDIR/../${CPP_XC8}" "$@" $CPPFLAGS -o "$OUTDIR/${ARG##*/}" "$ARG"
	  
   A="xc8" exec_bin "$EXE" $CFLAGS --outdir="$OUTDIR" "$OUTDIR/${ARG##*/}" 
  )
 }

 SYSTEM=$(uname -s)
 ARCH=$(uname -m)
 case "$SYSTEM:$ARCH" in
    Linux:x86_64) CPP_XC8="wave-xc8-lin64" ;;
    Linux:*) CPP_XC8="wave-xc8" ;;
    *:*) CPP_XC8="cpp-xc8.exe" ;;
 esac
 [ -e "$MYDIR/../${CPP_XC8}"  -a '!' -x "$MYDIR/../${CPP_XC8}" ] && chmod +x "$MYDIR/../${CPP_XC8}" 

 case $MYNAME in
   -*) ;;
   *) xc8_driver "$@" ; exit $? ;;
 esac
