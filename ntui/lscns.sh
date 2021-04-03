#!/bin/bash

while [[ $key != "q" ]]
do
	lsns
	read -s -n 1 key
	clear
done
