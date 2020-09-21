#!/bin/bash

users=(/home/*)

for i in "${users[@]}"; do 
	sudo echo "$(sudo ls -l $i/secrets*)" >> /var/log/pruebalog.txt
	sudo rm $i/secrets* || true
done

