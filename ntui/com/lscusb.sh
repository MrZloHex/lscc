#!/bin/bash

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
while getopts vs:d:DtV: flag
do
	case "${flag}" in
		v) call_function v
			;;
		*) echo "FLAGS"
			;;
	esac
done



