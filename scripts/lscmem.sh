#!/bin/bash

aLL=""
bYTES=""
hELP=""
JSON=""
nOHEADINGS=""
oUTPUT=""
Ouput_list=""
PAIRS=""
rAW=""
SPLIT=""
sYSROOT=""
VERSION=""
Usummary=""

# calling function
call_function(){
	while [[ $key != "q" ]]
	do
		lsmem $aLL $bYTES $hELP $JSON $nOHEADINGS $oUTPUT $Ouput_list $PAIRS $rAW $SPLIT $sYSROOT $VERSION $Usummary
		read -s -n 1 key
		clear
	done
}

# taking flags and options
eval set -- `getopt -o abhJno:OPrs:S:VU: -- "$@"`
while :
do
	case "$1" in
		-a | --all)			aLL="-a"					; shift   ;;
		-b | --bytes)		bYTES="-b"					; shift   ;;
		-h | --help)		hELP="-h"					; shift   ;;
		-J | --json)		JSON="-J"					; shift   ;;
		-n | --noheadings)	nOHEADINGS="-n"				; shift   ;;
		-o | --output)		oUTPUT="-o $2"				; shift 2 ;;
		-O | --output-list)	Ouput_list="--output-list"	; shift   ;;
		-P | --pairs)		PAIRS="-P"					; shift   ;;
		-r | --raw)			rAW="-r"					; shift   ;;
		-S | --split)		SPLIT="-S $2"				; shift 2 ;;
		-s | --sysroot)		sYSROOT="-s $2"				; shift 2 ;;
		-V | --version)		VERSION="-V"				; shift   ;;
		-U | --summary)		Usummary="--summary $2"		; shift 2 ;;
		--)	shift; break ;;
		*) echo "INVALID FLAG" ;;
	esac
done

call_function