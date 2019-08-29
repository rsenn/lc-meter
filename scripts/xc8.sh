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
	   *.exe|*/xc8) EXE="$1"; shift ;;
	   -C | -P | -Q | -S | \
--asmlist | --chipinfo | --echo | --maxipic | --nodel | --nofallback | --pass1 | --pre | --proto | --scandep | --shroud | \
--ASMLIST | --CHIPINFO | --ECHO | --MAXIPIC | --NODEL | --NOFALLBACK | --PASS1 | --PRE | --PROTO | --SCANDEP | --SHROUD) pushv CFLAGS "$1"; shift ;;
	   -[Vv]) pushv CFLAGS -V ; shift ;;
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
	  
  INCDIR="${EXE%/bin/*}/include"

  if [ -z "$EXE" -o ! -e "$EXE" ]; then
    return 1
  fi
  
  
  if [ -n "$CFG" -a -e "$CFG" ]; then
    set -- @$CFG
  else  
	set -- 	   -D{HI_TECH_C,__PICCPRO__,__PICC__}=1 \
		 -D__XC{,8}{,__}=1 \
		 -p1 \
		 --disambiguate=0 \
		 --c++11 \
		 -S "$INCDIR" \
		 -F "$SYSINC"
   fi
 (     
 set -e
  A="cpp-xc8" \
  exec_bin "$MYDIR/../cpp-xc8" "$@" $CPPFLAGS -o "$OUTDIR/${ARG##*/}" "$ARG"
	  
   A="xc8" exec_bin "$EXE" $CFLAGS --outdir="$OUTDIR" "$OUTDIR/${ARG##*/}" 
  )
 }
 case $MYNAME in
   -*) ;;
   *) xc8_driver "$@" ; exit $? ;;
 esac
