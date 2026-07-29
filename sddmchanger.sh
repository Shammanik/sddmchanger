#!/bin/bash

num=0
arr=()

themes=$(ls /usr/share/sddm/themes/)

echo "Enter selected theme:"
for i in $(echo "$themes"); do
	echo "$num $i"
	arr[num]="$i"
	((num++))
done
