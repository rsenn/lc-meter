#!/bin/bash

NAME=$(basename "$0" .sh)

set_var() {
    eval "shift;$1=\"\$*\""
}
str_toupper ()
{
    echo "$@" | tr "[[:lower:]]" "[[:upper:]]"
}

type cygpath >/dev/null 2>/dev/null || cygpath() {

  while :; do 
    case "$1" in
      -*) shift ;;
      *) break ;;
    esac
  done
  for ARG; do echo "$ARG"; done
}


find_program() {
  V=$1
  N=$2
  if [ -e scripts/"$N" ]; then
    P=scripts/"$N"
  elif type "$N" 2>/dev/null >/dev/null; then
    P=$N
  else
    P=$(ls -d {scripts/,/usr/,$SYSTEMDRIVE/{Programs,Program\ Files*}/*/,/mingw{32,64}/,$SYSTEMDRIVE/"$(str_toupper "$N")"*/}{,bin/}"$N".exe 2>/dev/null)
    [ -n "$P" -a -e "$P" ] || unset P
  fi
  if [ -n "$P" ]; then
    msg "Found $V: $P"
  set_var "$V" "$P"
  else
  return 1
  fi
}

get_pdf_info() {
 (TMP=$(mktemp  pdftkXXXXXX.txt)
  trap '${RMTEMP} -f "$TMP"' EXIT
  "$PDFTK" "$1" dump_data output "$TMP"
  cat "$TMP")
}

msg() {
  echo "${NAME:+$NAME: }$@" 1>&2
}

error() {
R=$?
echo "ERROR: $@" 1>&2
exit $R
}

exec_cmd() {
 (VAR="$1"
  shift
  IFS="
"
  eval "echo \"Executing: \${$VAR}\" \"\$@\"; echo"

 (echo -n "$VAR "
  for X in  "$@"; do echo -n "'$X' "; done) 1>&2
  eval "env - PATH=\"\$PATH\" \"\${$VAR}\" \"\$@\" 2>&1"
  eval "\"\${$VAR}\" \"\$@\" 2>&1"
  R=$?
  echo " (R=$R)" 1>&2)  1>&10
}

eagle_print_to_pdf() {

  INPUT=$1
  OUTPUT=${2:-${1%.*}.pdf}

  [ -n "$OUTDIR" -a -d "$OUTDIR" ] && OUTPUT=$OUTDIR/$(basename "$OUTPUT")
  rm -f -- "$OUTPUT"
  OPTIONS=$3
  : ${SCALE:=1.0}
  : ${PAPER:="a4"}
  ORIENTATION=${4:-${ORIENTATION:-portrait}}
  EAGLE_CMD="PRINT $ORIENTATION $SCALE -0 -caption ${OPTIONS:+$OPTIONS }FILE '${OUTPUT}' sheets all paper $PAPER"

  case "$INPUT" in
    *.brd) 
  [ "$RATSNEST" = true ] && EAGLE_CMD="RATSNEST; $EAGLE_CMD"
  ;;
esac
  

 echo "Processing $1 ..." 1>&2
 echo 1>&2

  case $INPUT in
     *.brd)   
       EAGLE_CMD="DISPLAY -bRestrict -tRestrict -bTest -tTest -bOrigins -tOrigins -bStop -tStop -bCream -tCream -Drills -Holes -Document -Reference bValues tValues; $EAGLE_CMD" 
       ;;
   esac
  EAGLE_CMDS=${EAGLE_CMDS:+"$EAGLE_CMDS; "}$EAGLE_CMD
  
  echo "$EAGLE_CMD
" > dummy
  exec 9<dummy

 exec_cmd EAGLE -C "$EAGLE_CMD; QUIT  "      "$INPUT"  <<<"QUIT"  &
  pid=$!

  while [ ! -s "$OUTPUT" ]; do
    sleep 0.1
  done

  sleep 0.1

  kill $pid 2>/dev/null
  wait $pid

 (TMP=$(mktemp infoXXXXXX.txt)
  trap 'mv -f -- "$OUTPUT.$$" "$OUTPUT"; rm -f "$TMP"' EXIT
  cat >$TMP <<EOF
InfoBegin
InfoKey: Title
InfoValue: $(basename "$OUTPUT" .pdf)
EOF
   exec_cmd PDFTK "$OUTPUT" update_info "$TMP" output  "$OUTPUT.$$")

 (#exec_cmd GHOSTSCRIPT -dNOCACHE -dNOPAUSE -dBATCH -dSAFER -sDEVICE=eps2write -dLanguageLevel=2 -sOutputFile="${OUTPUT%.pdf}.eps" -f "$OUTPUT"
  exec_cmd PDFTOPS -eps "$OUTPUT" "${OUTPUT%.pdf}.eps" && ${RMTEMP} -vf -- "$OUTPUT"
)

echo 1>&2
}

eagle_print() {

  : ${RMTEMP:=rm}

  export HOME="$(cygpath -a "$USERPROFILE")"

  exec 10>eagle-print.log


  find_program EAGLE "eagle" || error "eagle not found"
  find_program PDFTK "pdftk" || error "pdftk not found"
  find_program GHOSTSCRIPT "gs" || error "ghostscript not found"
  find_program PDFTOPS "pdftops" || error "pdftops not found"

  while :; do 
    case "$1" in
      -d=*|--destdir=*) OUTDIR="${1#*=}"; shift ;;
      -d|--destdir) OUTDIR="$2"; shift 2 ;;
      -r|--ratsnest) RATSNEST="true"; shift ;;
      *) break ;;
    esac
  done
  [ -n "$OUTDIR" -a -d "$OUTDIR" ] && echo "OUTDIR is '$OUTDIR'" 1>&2

  for ARG; do

   (SCH=${ARG%.*}
    if [ ! -e "${SCH}" ]; then
      SCH=${SCH%-[[:lower:]]*}.sch
    fi
    BRD=${ARG%.*}.brd
    OUT=${OUTDIR:-doc/pdf}/$(basename "${BRD%.*}").pdf
     trap '${RMTEMP} -f "${BRD%.*}"-{schematic,board,board-mirrored}.{pdf,eps}' EXIT

  #  ORIENTATION="portrait" PAPER="a4" SCALE=1.0 eagle_print_to_pdf "$SCH" "${SCH%.*}-schematic.pdf"
    ORIENTATION="landscape" PAPER="a4" SCALE="0.8 -1" eagle_print_to_pdf "$SCH" "${SCH%.*}-schematic.pdf"

    #ORIENTATION="landscape" PAPER="a5"  SCALE="3.0 -1"
     ORIENTATION="landscape" PAPER="a5"  SCALE="1.0"
  #   ORIENTATION="landscape" PAPER="a4"  SCALE="2.0"

        set -e

      eagle_print_to_pdf "$BRD" "${BRD%.*}-board.pdf"
      eagle_print_to_pdf "$BRD" "${BRD%.*}-board-mirrored.pdf" MIRROR

    exec_cmd GHOSTSCRIPT -sDEVICE=pdfwrite -dNOPAUSE -dBATCH -dSAFER  -dEPSCrop -dSubsetFonts=true -dEmbedAllFonts=true -sOutputFile="$OUT"   \
    "${SCH%.*}"-schematic.eps \
    "${BRD%.*}"-{board,board-mirrored}.eps \
  ) || exit $?
  done
}

eagle_print "$@"
