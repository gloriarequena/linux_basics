#!/bin/bash

users=(/home/*)

for i in "${users[@]}"; do
	if ! [[ -f "$i/normas_nombres_ficheros.txt" ]]; then
		sudo echo "$i " >> /var/log/logsinnormas.txt
		sudo touch "$i/normas_nombres_ficheros.txt"
	fi
done
