#!/bin/bash

sddm=/etc/sddm.conf
num=0
arr=()

current=$(grep -Po '(?<==).*' "$sddm")
themes=$(ls /usr/share/sddm/themes/)

echo -e "\nYour current theme is: \e[31m$current\e[0m\n"

echo "Enter selected theme:"
for i in $(echo "$themes"); do
	echo "$num $i"
	arr[num]="$i"
	((num++))
done

read select
sudo sed -i "s/^Current=.*/Current=${arr[select]}/" "$sddm"
echo "Theme changed on ${arr[select]}"
