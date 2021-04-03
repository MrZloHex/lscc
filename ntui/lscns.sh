#!/bin/sh

while [[ $key != "q" ]]
do
	lsns
	read -s -n key
	clear
done
