#!/bin/sh

while [[ $key != "q" ]]
do
	lsattr
	read -s -n 1 key
	clear
done
