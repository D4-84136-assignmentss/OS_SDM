#!bin/bash
#function to calculate factorial
factorial() {
	local num=$1
	local result=1

	for(( i=1; i<=num; i++ )); do
		result=$(( result * i ))
	done
	echo $result
}
echo -n "Enter a number to find its factorial: "
read number

if [ $number -lt 0 ];then
	echo "factorial is not defined for negative numbers."
else
	result=$(factorial $number)
	echo "The factorial of $number is $result."
fi
