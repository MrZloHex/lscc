#!/bin/bash

# taking flags and options

while getopts vs:d:DtV: flag
do
	case "${flag}" in
		v) opt=${OPTARG}
			;;
		*) echo "FLAGS"
			;;
	esac
done



while [[ $key != "q" ]]
do
	lsusb
	read -s -n 1 key
	clear
done
