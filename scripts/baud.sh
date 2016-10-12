#!/bin/bash

calc_m() {
  case "${BRGH:-1}:${SYNC:-0}" in
    0:0) M=64 ;;
    0:1) M=4 ;;
    1:*) M=16 ;;
  esac
}

# calc_baud <Fosc> <SPBRG> 
calc_baud() {
  B="$1 / ($M * ($2 + 1))"
  echo "Calc: $B" 1>&2
  R=$(echo "${B}" | bc -l)
  echo "${R%%.*}"
}

# calc_spbrg <Fosc> <baud>
calc_spbrg() {
  SPBRG="($1 / ($2 * $M) ) - 1"
  echo "Calc: $SPBRG" 1>&2
  R=$(echo "${SPBRG}"  | bc -l)
  echo "${R%%.*}"
  #[ "${SPBRG%%.*}" -lt 0 ] && SPBRG=
}

abs () {
  echo $(( $1 > 0 ? $1 : -$1 ))
}

exp_num() {
 O="scale=0"
  N=${1%%[!.0-9]*}
  case "$1" in
    *G*) O="$O; $N*10^9" ;;
    *M*) O="$O; $N*10^6" ;;
    *k*) O="$O; $N*10^3" ;;
    *m*) O="$O; $N*10^-3" ;;
    *u*) O="$O; $N*10^-6" ;;
    *n*) O="$O; $N*10^-9" ;;
    *p*) O="$O; $N*10^-12" ;;
    *f*) O="$O; $N*10^-15" ;;
    *) O="$O; $N" ;;
  esac
  R=$(echo "$O*1	" | bc )
  echo "${R%%.*}"
}


baud() {

  while [ $# -gt 0 ]; do
    case "$1" in
      *Hz) XTAL=$(exp_num "$1") ; shift ;;	
      *bps|*baud|*cps) UART_BAUD=$(exp_num "$1"); shift ;;
      *=*) eval "${1%%=*}=\"${1#*=}\""; shift ;;
      *) break ;;
    esac
  done
      
  [ $# -gt 0 ] && { UART_BAUD=$(exp_num "$1"); shift; }
  [ $# -gt 0 ] && { XTAL=$(exp_num "$1"); shift; }
     
  : ${SYNC:=0}
  : ${BRGH:=1}

  calc_m

  : ${XTAL:=20000000}
  : ${FOSC:=$((XTAL))}
  : ${UART_BAUD:=9600}
  
  
  
  
  WANTED_BAUD=$UART_BAUD

  [ -n "$SPBRG" ] || SPBRG=$(calc_spbrg "$FOSC" "$UART_BAUD")

  UART_BAUD=$(calc_baud "$FOSC" "$SPBRG")

  DIFF_BAUD=$(abs $(( WANTED_BAUD - UART_BAUD )) )

  DEVIATION=$(echo "scale=3; $DIFF_BAUD * 100 / $WANTED_BAUD" | bc -l | sed '/^\./ s,^,0, ; /\./ s,0*$,,')%

  for VAR in XTAL FOSC UART_BAUD DEVIATION; do
	eval "echo \"  // $VAR: \$$VAR\""
  done
  for VAR in SYNC BRGH SPBRG; do
	eval "echo \"  $VAR = \$$VAR;\""
  done
}

baud "$@"
