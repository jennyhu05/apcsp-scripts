#!/bin/bash

for droplet in dl01 dl02 dl03 dl04 dl05 dl06 dl07 dl08 dl09 dl10 dl11
do
	ping -c 1 $droplet > /dev/null 2>&1
	if [[ $? -eq 0 ]]; then
		echo $droplet ": alive"
	else
		echo $droplet ": dead"
	fi
done

exit 0




