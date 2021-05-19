#!/bin/bash

JSON =""
lIST=""
nOHEADINGS=""
oUTPUT=""
oUTPUT_ALL=""
pTASK=""
rAW=""
tYPE=""
uNOTRUNCATE=""
WNOWRAP=""
VERSION=""
hELP=""

call_function() {
	while [[ $key != "q" ]]
	do
		lsns $JSON $lIST $nOHEADINGS $oUTPUT $oUTPUT_ALL $pTASK $rAW $tYPE $uNOTRUNCATE $WNOWRAP $VERSION $hELP
		read -s -n 1 key
		clear
	done
}

# taking flags and options
eval set -- `getopt -o Jlo:Op:rt:uWVh -- "$@"`
while :
do
	case "$1" in
		-J | --json) 		JSON="-J"		; shift   ;;
		-l | --list)		lIST="-l"		; shift   ;;
		-n | --noheadings)	nOHEADINGS="-n" ; shift   ;;
		-o | --output) 		oUTPUT="-o $2"	; shift 2 ;;
		-O | --output-all )	oUTPUT_ALL="--output-all"	; shift   ;;
		-p | --task)		pTASK="-P $2"	; shift 2 ;;
		-r | --raw )		rAW="-R" 		; shift   ;;
		-t | --type)		tYPE="-t $2"	; shift 2 ;;
		-u | --notruncate)	uNOTRUNCATE="-u"; shift   ;;
		-W | --nowrap)		WNOWRAP="-W"	; shift   ;;
		-V | --version)		VERSION="-V"	; shift   ;;
		-h | --help)		hELP="-h"		; shift   ;;
		--)	shift; break ;;
		*) echo "INVALID FLAG" ;;
	esac
done

call_function

