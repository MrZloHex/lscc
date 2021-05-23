#!/bin/bash

vERBOSE=""
sHOW=""
Id=""
DEVICE=""
tREE=""
VERSION=""


# calling function
call_function()
{	
	while [[ $key != "q" ]]
	do
		lsusb $vERBOSE $sHOW $Id $DEVICE $tREE $VERSION
		read -s -n 1 key
		clear
	done
}


# taking flags and options
eval set -- `getopt -o vs:d:D:tV -- "$@"`
while :
do
	case "$1" in
		-v | --verbose) vERBOSE="-v"	; shift   ;;
		-s)		sHOW="-s $2"			; shift 2 ;;
		-d) 		Id="-d $2" 			; shift 2 ;;
		-D) 		DEVICE="-D $2"		; shift 2 ;;
		-t | --tree )	tREE="-t"		; shift   ;;
		-V | --version)	VERSION="-V"	; shift   ;;
		--)	shift; break ;;
		*) echo "INVALID FLAG" ;;
	esac
done

call_function
