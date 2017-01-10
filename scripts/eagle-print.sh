#!/bin/sh
NAME=$(basename "$0" .sh)

set_var() {
    eval "shift;$1=\"\$*\""
}

find_program() {
  V=$1
  N=$2 
  if type "$N" 2>/dev/null >/dev/null; then
    P=$N
  else
    P=$(ls -d {,/usr/,$SYSTEMDRIVE/{Programs,Program\ Files*}/*/,/mingw{32,64}/}{,bin/}"$N".exe 2>/dev/null)
    [ -n "$P" -a -e "$P" ] || unset P
  fi
  if [ -n "$P" ]; then
    msg "Found $V: $P" 
	set_var "$V" "$P"
  fi
}

get_pdf_info() {
 (TMP=$(mktemp  pdftkXXXXXX.txt)
  trap 'rm -f "$TMP"' EXIT
  "$PDFTK" "$1" dump_data output "$TMP"
  cat "$TMP")
}

msg() {
  echo "${NAME:+$NAME: }$@" 1>&2
}

eagle_print_to_pdf() {
  INPUT=$1
  OUTPUT=${2:-${1%.*}.pdf}
  rm -f "$OUTPUT"
  OPTIONS=$3
  : ${SCALE:=1.0}
  : ${PAPER:="a4"}
  ORIENTATION=${4:-${ORIENTATION:-portrait}}
  EAGLE_CMD="PRINT $ORIENTATION $SCALE -0 -caption ${OPTIONS:+$OPTIONS }FILE '${OUTPUT}' sheets all paper $PAPER"  
 
  case $INPUT in
     *.brd)   EAGLE_CMD="DISPLAY -bOrigins -tOrigins bValues tValues; $EAGLE_CMD" ;;
   esac
  EAGLE_CMDS=${EAGLE_CMDS:+"$EAGLE_CMDS; "}$EAGLE_CMD

  msg "CMD: $EAGLE_CMD"

  "$EAGLE" -C "$EAGLE_CMD; QUIT"      "$INPUT" &
  pid=$!

  while [ ! -s "$OUTPUT" ]; do
	  sleep 0.1
  done

  sleep 0.1

  kill $pid
  wait $pid
		
 (TMP=$(mktemp infoXXXXXX.txt)
  trap 'mv -f -- "$OUTPUT.$$" "$OUTPUT"; rm -f "$TMP"' EXIT
  cat >$TMP <<EOF
InfoBegin
InfoKey: Title
InfoValue: $(basename "$OUTPUT" .pdf)
EOF
  set -x; "$PDFTK" "$OUTPUT" update_info "$TMP" output  "$OUTPUT.$$")
  
 (#set -x
 echo "Converting $OUTPUT to ${OUTPUT%.pdf}.eps ..." 1>&2
  "$PDFTOPS" -eps "$OUTPUT" "${OUTPUT%.pdf}.eps" && rm -vf "$OUTPUT")
}

eagle_print() {

  export HOME="$(cygpath -a "$USERPROFILE")"

  find_program EAGLE "eagle"
  find_program PDFTK "pdftk"
  find_program GHOSTSCRIPT "gs"
  find_program PDFTOPS "pdftops"

  for ARG; do

   (SCH=${ARG%.*}.sch
	BRD=${ARG%.*}.brd
	OUT=doc/pdf/$(basename "${BRD%.*}").pdf
   trap 'rm -f "${BRD%.*}"-{schematic,board,board-mirrored}.{pdf,eps}' EXIT
   
	ORIENTATION="portrait" PAPER="a4" SCALE=1.0 eagle_print_to_pdf "$SCH" "${SCH%.*}-schematic.pdf" 

	ORIENTATION="landscape" PAPER="a6"  SCALE="3.0 -1" 
      
		eagle_print_to_pdf "$BRD" "${BRD%.*}-board.pdf" 
		eagle_print_to_pdf "$BRD" "${BRD%.*}-board-mirrored.pdf" MIRROR
      
	set -x
	"$GHOSTSCRIPT" -sDEVICE=pdfwrite -dNOPAUSE -dBATCH -dSAFER  -dEPSCrop  -dPDFSETTINGS=/prepress -dSubsetFonts=true -dEmbedAllFonts=true -sOutputFile="$OUT"   "${BRD%.*}"-{schematic,board,board-mirrored}.eps)
	
	

  done
}

eagle_print "$@"