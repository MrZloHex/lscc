#!/bin/bash

while [[ $key != "q" ]]
do
	lsmem
	read -s -n 1 key
	clear
done
