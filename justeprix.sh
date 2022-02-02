#!/bin/bash

randomNumber=$(( (RANDOM % 1000) + 1))
echo $randomNumber
guess=0

while [ $guess != $randomNumber ]
do
	read -p 'Saisissez votre valeur : ' guess
	echo $guess
	if [ $guess -gt $randomNumber ]; then
		echo "C'est moins !"
	elif [ $guess -lt $randomNumber ]; then
		echo "C'est plus !"
	elif [ $guess -eq $randomNumber ]; then
		echo 'Gagné !'
	fi
done
