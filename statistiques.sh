#!/bin/bash

function is_number()
{
re='^[+-]?[0-9]*^[^.]+$'
	if ! [[ $1 =~ $re ]] ; then
		return 1
	else
		return 0
	fi
}

moyenne=0
counter=0
max=-101
min=101

while (("$#"));do
	if is_number $1 ; then
		if [ $1 -lt $min ];then
			min=$1
		elif [ $1 -gt $max ];then
			max=$1
		fi
		moyenne=$((moyenne+ $1))
		counter=$((counter+1))
	else
		echo "$1 n'est pas un nombre"
	fi
	shift
done

echo "Val min : $min"
echo "Val max : $max"
moyenne=$((moyenne/counter))
echo "Moyenne : $moyenne"
