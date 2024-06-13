#!/bin/bash
echo -n "enter a  number to print its multiplication table: "
read number
echo "multiplication table for $number:"
for i in {1..10}; do
	result=$(( number * i ))
	echo "$number * $i = $result"
done
