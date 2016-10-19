#!/bin/sh
IFS="
"
CR='
'
nl="
"
debug () 
{ 
    [ "$DEBUG" = true ] && echo "DEBUG: $@" 1>&2
}
addsuffix()
{
 (SUFFIX=$1; shift
  CMD='echo "$LINE$SUFFIX"'
  if [ $# -gt 0 ]; then
    CMD="for LINE; do $CMD; done"
  else
    CMD="while read -r LINE; do $CMD; done"
  fi
  eval "$CMD")
}
explode()
{
 (S="$1"; shift
  IFS="
";

  [ $# -gt 0 ] && exec <<<"$*"
  ${SED-sed} "s|${S//\"/\\\"}|\n|g"
 )
}
implode()
{
 (unset DATA SEPARATOR;
  SEPARATOR="$1"; shift
  CMD='DATA="${DATA+$DATA$SEPARATOR}$ITEM"'
  if [ $# -gt 0 ]; then
    CMD="for ITEM; do $CMD; done"
  else
    CMD="while read -r ITEM; do $CMD; done"
  fi
  eval "$CMD"
  echo "$DATA")
}

pushv()
{
    eval "shift;$1=\"\${$1+\"\$$1\${IFS%\"\${IFS#?}\"}\"}\$*\""
}


read_cfgdata() {
  output_word() { 
	[ -n "$ADDRESS" ] && { [ -n "$SETTINGS" -a -n "$CFGNAME" ] && echo "${nl}// Word $CFGNAME @ 0x$ADDRESS${nl}"
#	IFS="$nl"
    for S in $SETTINGS; do 
      D="${S##*\[}"
      D="${D%\]}"
      V="${S##*=}"
      V="${V%%\[*}"

      S="${S%%|*}"
      
      S="${S%%?$D*}"
         printf "#pragma config %-7s= %-7s // %s [ %-10s ]\n" "${S%%=*}" "${S#*=}" "$D" "$(IFS="|"; implode " | " ${V%\]})"
         done
   
		unset ADDRESS SETTINGS
	  } 
	}
  output_setting() { 
	[ -n "$SETTING" ] && {
	output_value
	VALUES=$(echo "$VALUES" | sed 's,|,\n,g' | sort -f -u -V | implode '|')
	  #SETTINGS="${SETTINGS:+$SETTINGS, }$SETTING=/*${VALUES%|*}|*/${VALUES##*|}"
#	  SETTINGS="${SETTINGS:+$SETTINGS, }$SETTING=${VALUES%%|*}/*|${VALUES#*|}*/"
S="$SETTING=$VALUES[$SETDESC]"
   pushv SETTINGS "$S"
	debug "// Setting $SETTING - $SETDESC${nl}# pragma config $SETTING=$VALUES"
	  unset SETTING VALUES 
	}
   }
 output_value() { [ -n "$NAME" ] && { IFS="|" pushv VALUES "$NAME"
 #echo "// Value: $NAME"
 unset NAME; } }
  (IFS=":"
  while read -r LINE; do
  LINE=${LINE%"$CR"}
  ARGS=${LINE#*:}
  set -- $ARGS
    case "$LINE" in
      CWORD:*:*:*) output_word; ADDRESS=$1; CFGMASK=$2; DEFAULT=$3; CFGNAME=$4 ;;
      CSETTING:*:*:*) output_setting; SETTING=$2; SETMASK=$1; SETDESC=$3 ;;
      CVALUE:*:*:*) output_value; VALUE=$1 ; NAME=$2; DESC=$3 ;;
    esac
    
  done
  output_value
  output_setting
  output_word)
}

find_pic_files() {
  : ${EXT:="h"}
  : ${PROGRAMDIRS=`cygpath -a -m ${ProgramFiles+"$ProgramFiles"} ${ProgramW6432+"$ProgramW6432"}`}

  BINDIRS=`
	  for P in $PROGRAMDIRS; do 
		  find "$P"*/{Microchip/xc8,HI-TECH*/PICC*,SDCC*} -type d -iname "bin" -and -not -iwholename "*/rollback*"
	  done
  `
  ARGS="$*"
  set -- $BINDIRS
  COMPILERDIRS=${*%/*}
  set -- 
  case "$EXT" in
	/) unset ARGS; TYPEARG="-type${IFS}d" SUBDIR=""; : ${MINDEPTH=0} ${MAXDEPTH=0} ;;
	h | H) PREFIX="pic" SUBDIR="include" MAXDEPTH=1 ;;
	lib | LIB) SUBDIR="{,*/}lib" MAXDEPTH=4 ;;
	lkr) SUBDIR="dat/lkr"  SUFFIX="*" MAXDEPTH=2 MINDEPTH=0 ;;
	cfg* | lkr*) SUBDIR="dat/$EXT" MAXDEPTH=1 ;;
  esac

  if [ -n "$ARGS" ]; then
	for NAME in $ARGS; do
		NAME="${PREFIX:-*}${NAME#*[Pp][Ii][Cc]}${SUFFIX}" 
		[ $# -gt 0 ] && set -- "$@" -or 
		set -- "$@"  -iname "$NAME${EXT:+.$EXT}"
	done
	
	set -- "(" "$@" ")"
  fi
 set --  ${TYPEARG:--not${IFS}-type${IFS}d} "$@"
  
  if [ -n "$SUBDIR" ]; then
 
    CMD='ls -d -- "$DIR"/'$SUBDIR${SUBDIR:+/}' 2>/dev/null'
    CMD='COMPILERDIRS=`for DIR in $COMPILERDIRS; do '$CMD'; done`'
    debug  "$CMD" 
    eval "$CMD"
    #COMPILERDIRS=`for DIR in $COMPILERDIRS; do eval "$CMD" done`
  fi
  
  [  -n "$MAXDEPTH"  ] && set --  -maxdepth $MAXDEPTH "$@"
  
#  set -- ${MAXDEPTH:+-maxdepth$IFS$MAXDEPTH} -mindepth ${MINDEPTH:-1} "$@"
  
  [ -z "$MAXDEPTH" ] && set -- "$@" -and -not -iwholename "*/rollback*" 
  
  set find $COMPILERDIRS -follow "$@"
  set -x
  "$@" 2>/dev/null
}

if [ $# -le 0 ]; then
  set -- pic10f206 pic12f1840 pic16f628a pic16f876a pic18f252 pic18f2550 pic18f25k22 pic18f25k50
fi

find_pic_files "$@"

