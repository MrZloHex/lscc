#!/bin/sh

while [[ $key = "q" ]]
do
	lsipc
	read -s -n 1 key
	clear
done
