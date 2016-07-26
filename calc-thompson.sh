#!/bin/bash

bce() {
  (
  BC="${scale:+scale=$scale; }pi=4*a(1); $*"

 # echo "bce \"$EXPR\"" 1>&2
  EXPR="/\\./ { s,^\\.,0.0, ; s,0*\$,, ; s,\\.\$,, }"
  CMD='echo "$BC" | bc -l  | sed "$EXPR"'
  [ "${ROUND+set}" = set ] && #CMD="$CMD | round $ROUND"
  EXPR="$EXPR; /\\./ { s|\(.*\)\.\($(str_repeat $ROUND .)\).*|\1.\2| }"
  eval "$CMD")
}
round() {
 (N="$1"
 shift 
 [ $# -gt 0 ] && exec <<<"$*"
  sed "/\\./ { s|\(.*\)\.\($(str_repeat $N .)\).*|\1.\2| }")
}
str_repeat() {
  (N=$1
  shift
  O=
  while [ $((N)) -gt 0 ]; do
    O="$O$*"
    : $((N--))
  done
  echo "$O")
}
parse_num() {
  N=${1%%[!.0-9]*}
  case "$1" in
    *G*) bce "$N * 1000000000" ;;
    *M*) bce "$N * 1000000" ;;
    *k*) bce "$N * 1000" ;;
    *m*) bce "$N * 0.001" ;;
    *u*) bce "$N * 0.000001" ;;
    *n*) bce "$N * 0.000000001" ;;
    *p*) bce "$N * 0.000000000001" ;;
    *f*) bce "$N * 0.000000000000001" ;;
    *) echo "$N" ;;
  esac
}
format_num() {
 (N=${1%%[!.0-9]*}
  U=${1#$N}
  ROUND=6
  case "$N" in
    0.000000000000*) echo "$(bce "$N * 1000000000000000")f$U" ;;
    0.000000000*) echo "$(bce "$N * 1000000000000")p$U" ;;
    0.000000*) echo "$(bce "$N * 1000000000")n$U" ;;
    0.000*) echo "$(bce "$N * 1000000")u$U" ;;
    0.*) echo "$(bce "$N * 1000")m$U" ;;
    *??????????.*) echo "$(bce "$N / 1000000000")G$U" ;;
    *???????.*) echo "$(bce "$N / 1000000")M$U" ;;
    *????.*) echo "$(bce "$N / 1000")k$U" ;;
    *) echo "$N$U" ;;
  esac)
}

var_for() {
  case "$1" in
    *Hz) echo f ;;
    *F) echo C ;;
    *H) echo L ;;
  esac
}
unit_for() {
  case "$1" in
    C) echo F ;;
    L) echo H ;;
    f) echo Hz ;;
  esac
}
other_var() {
  case "$1" in
    C) echo L ;;
    L) echo C ;;
  esac
}
var_set() {
  eval "shift; $1=\$*"
}
var_get() {
  eval "echo \"\$$1\""
}
var_isset() {
  eval "test \"\${$1+set}\"" && echo 1 || echo 0
}
get_input() {
 ([ "$NO_PROMPT" != : ] && echo -n "Enter a value for any variable: " 1>&2
  read -r I
  echo "$I")
}
get_any() {
  I=$(get_input)
  V=$(var_for "$I")
  N=$(parse_num "$I")
  : ${O:=$(other_var "$V")}
  echo "Variable $V = $N$(unit_for $V)" 1>&2
  var_set "$V" "$N"
}

calc_thompson() {
  unset L C f
  unset I V N O
  
  IFS="
"
  
  [ $# -gt 0 ] && { exec <<<"$*"; NO_PROMPT=:; }
  
  until [ $(( $(var_isset L) + $(var_isset C) + $(var_isset f) )) -ge 2 ]; do
    get_any
  done
  if [ $(var_isset f) -eq 0 ]; then
	R=$(bce "1 / (2 * pi * sqrt($L * $C))")
	O=f
  else
	R=$(bce "1 / (4 * pi^2 * $(other_var $O))")
  fi
  echo "$O = $(format_num "$R")$(unit_for $O)"
  
}
 calc_thompson "$@"