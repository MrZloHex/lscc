#!/bin/sh

while [[ $key != "q" ]]
do
	lsclogins
	read -s -n key
	clear
done
