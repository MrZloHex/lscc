#!/bin/bash

# all flags
RECURSION=""
VERSION=""
aLL=""
dIRECTORIES=""
lONG=""
pROJECT=""
vGENERATION=""
file=""

# calling function
call_function()
{
	while [[ $key != "q" ]]
	do
		lsattr $RECURSION $VERSION $aLL $dIRECTORIES $lONG $pROJECT $vGENERATION $file
		read -s -n 1 key
		clear
	done
}


# taking all options and flags
eval set -- `getopt -o RVadlpv -- "$@"`
while :
do
	case "$1" in
		-R) RECURSION="-R"	; shift   ;;
		-V) VERSION="-V"	; shift   ;;
		-a) aLL="-a"		; shift   ;;
		-d) dIRECTORIES="-d"	; shift   ;;
		-l) lONG="-l"		; shift   ;;
		-p) pROJECT="-p"	; shift   ;;
		-v) vGENERATION="-v"	; shift   ;;
		--)	shift ; break ;;
		* ) file="$2"		; shift 2 ;;
	esac
done

call_function
