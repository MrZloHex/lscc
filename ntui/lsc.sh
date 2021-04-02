#!/bin/sh

while [[ $key != "q" ]]
do
	ls
	read -s -n 1 key
	clear
done
