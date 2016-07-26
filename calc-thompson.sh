#!/bin/bash

bce() {
  (
  BC="${scale:+scale=$scale; }pi=4*a(1); $*"

 [ "$DEBUG" = : ] && echo "$*" 1>&2
  EXPR="/\\./ { s,^\\.,0.0, ; s,0*\$,, ; /^-\?\\./ s|^\(-\)\?|\10|; s,\\.\$,, }"
  
    CMD='echo "$BC" | bc -l  | sed "$EXPR"'
  [ "${ROUND+set}" = set ] && #CMD="$CMD | round $ROUND"
  EXPR="$EXPR; /\\./ { s|\(.*\)\.\($(str_repeat $ROUND .)\).*|\1.\2|; s|\\.$|| }"
  eval "$CMD")
}
log10() {
  ROUND=0 bce "l($1)/l(10)"
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

exp_num() {
  N=${1%%[!.0-9]*}
  case "$1" in
    *G*) echo "$N*10^9" ;;
    *M*) echo "$N*10^6" ;;
    *k*) echo "$N*10^3" ;;
    *m*) echo "$N*10^-3" ;;
    *u*) echo "$N*10^-6" ;;
    *n*) echo "$N*10^-9" ;;
    *p*) echo "$N*10^-12" ;;
    *f*) echo "$N*10^-15" ;;
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
    *.*) echo "$N$U" ;;
    *??????????) echo "$(bce "$N / 1000000")G$U" ;;
    *???????) echo "$(bce "$N / 1000000")M$U" ;;
    *????) echo "$(bce "$N / 1000000")k$U" ;;
    *) echo "$N$U" ;;
  esac)
}

exp10_num() {
 (N=${1%%[!.0-9]*}
  L=$(ROUND=0 log10 "$N")
 while F=$(bce "$N / 10^$L"); do
 case "$F" in
  *[0-9][0-9].*) L=$((L + 1)) ;;
  0.0*) L=$((L - 1)) ;;
   *) break ;;
   esac
 done
 [ $((L)) -eq 0 ] && unset L
  echo "$F${L:+*10^$L}"
  )
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
  v=$(str_tolower "$V")
  N=$(parse_num "$I")
  E=$(exp10_num "$N")
  : ${O:=$(other_var "$V")}
  echo "Variable $V = $(format_num $N)$(unit_for $V)" 1>&2
  var_set "$V" "$N"
  var_set "$v" "$E"
  
}
str_tolower ()
{
    echo "$@" | tr "[[:upper:]]" "[[:lower:]]"
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
	R=$(DEBUG=: bce "l=$l; c=$c; 1 / (2 * pi * sqrt(l * c))")
	O=f
  else
    V=$(other_var $O)
    v=$(str_tolower $V)
    N=$(var_get $v)
	R=$(DEBUG=: bce "f=$f; $v=$N; 1 / (4 * pi^2 * f^2 * $v)")
  fi
  echo "$O = $(format_num "$R")$(unit_for $O)"
  
}
 calc_thompson "$@"