#!/bin/sh

while [[ $key != "q" ]]
do
	lslogins
	read -s -n 1 key
	clear
done
