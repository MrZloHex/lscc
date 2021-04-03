#!/bin/sh

while [[ $key != "q" ]]
do
	lsblk
	read -s -n 1 key
	clear
done
