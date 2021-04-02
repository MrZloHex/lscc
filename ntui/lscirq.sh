#!/bin/sh

while [[ $key != "q" ]]
do
	lsirq
	read -s -n 1 key
	clear
done
