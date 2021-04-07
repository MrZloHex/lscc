#!/bin/bash

vERBOSE=unset
sHOW=unset
Id=unset
DEVICE=unset
tREE=unset
VERSION=unset


# calling function
call_function()
{
	# arguments of function
	opt=$1
	arg=$2
	
	while [[ $key != "q" ]]
	do
		if [[ $arg = "" ]]
		then
			lsusb -$opt
		else
			lsusb -$opt $arg
		fi

		read -s -n 1 key
		clear
	done
}


# taking flags and options
PARSED_ARGUMENTS=$(getopt -a -n lscusb -o vs:d:D:tV --long verbose, tree, version -- "$@")
eval set -- "$PARSED_ARGUMENTS"

while :
do
	case "$1" in
		-v | --verbose) vERBOSE="-v"	; shift   ;;
		-s)		sHOW="-s $2"	; shift 2 ;;
		-d) 		Id="-d $2" 	; shift 2 ;;
		-D) 		DEVICE="-D $2"	; shift 2 ;;
		-t | --tree )	tREE="-t"	; shift   ;;
		-V | --version)	VERSION="-V"	; shift   ;;
		--)	shift; break ;;
		*) echo "INVALID FLAG" ;;
	esac
done	
