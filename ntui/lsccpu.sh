#!/bin/sh

while [[ $key != "q" ]]
do
	lscpu
	read -s -n 1 key
	clear
done
