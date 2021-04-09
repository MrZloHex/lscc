#!/bin/bash

noheadings=""
output=""
sorts=""
json=""
pairs=""
version=""
helps=""

call_function()
{
	while [[ $key != "q" ]]
	do
		lsirq $noheadings $output $sorts $json $pairs $version $helps
		read -s -n 1 key
		clear
	done
}


eval set -- `getopt -o no:s:JPVh --long noheadings,output:,sort:,json,pairs,version,help: -- "$@"`
while :
do
	case "$1" in
		-n | --noheadings) noheadings="-n"	; shift   ;;
		-o | --output)	   output="-o $2"	; shift 2 ;;
		-s | --sort)	   sorts="-s $2"	; shift 2 ;;
		-J | --json)	   json="-J"		; shift   ;;
		-P | --pairs)	   pairs="-P" 		; shift   ;;
		-V | --version)    version="-V"		; shift   ;;
		-h | --help) 	   helps="-h" 		; shift   ;;
		--)	shift; break ;;
		*) echo "INVALID FLAG"
	esac
done

call_funciton()
