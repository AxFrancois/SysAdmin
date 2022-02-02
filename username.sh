#!/bin/bash

if [ $# = 0 ]; then
	echo "Utilisation : ${0##*/} nom_utilisateur"
else
	str=$(id $1 2> /dev/null)
	if [ $? = 1 ]; then
		echo "$1 n'est pas un utilisateur"
	else
		echo "$1 est un utilisateur"
	fi
fi
