#!/bin/bash

HEADER="/opt/hitech/picc-18/9.66/include/pic${CHIP:-18f2520}.h"
IFS="
"

while read -r LINE; do 
	case "$LINE" in
		*Config*Register*) REG=${LINE##"// Config Register: "}; continue ;;
		"#define"*)  IFS=" $IFS"; read -r PP NAME VALUE <<<"$LINE" ;;
                *) continue ;;
	esac
	test -n "$REG" &&
echo "$REG $NAME $VALUE"

done <"$HEADER"
