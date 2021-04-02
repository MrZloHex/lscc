#!/bin/sh

while [[ $key != "q" ]]
do
	lsusb
	read -s -n 1 key
	clear
done
