#!/bin/sh

while [[ $key != "q" ]]
do 
	lsinitcpio
	read -s -n 1 key
	clear
done
