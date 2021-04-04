#!/bin/bash

while [[ $key != "q" ]]
do 
	lslocks
	read -s -n 1 key
	clear
done
