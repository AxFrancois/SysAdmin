#!/bin/bash

PASSWORD="MDP"
read -s -p 'Quel est votre mot de passe ?' ValEntree
if [ $PASSWORD = $ValEntree ]; then
	echo "Mot de passe correct"
else
	echo "Mot de passe incorrect"
fi
