#!/bin/bash
source test.conf
num=0
arr=()

themes=$(ls /usr/share/sddm/themes/)

echo "Enter selected theme:"
for i in $(echo "$themes"); do
	echo "$num $i"
	arr[num]="$i"
	((num++))
done
read select
sed -i "s/^Current=.*/Current=${arr[select]}/" test.conf
echo "Theme changed on ${arr[select]}"
