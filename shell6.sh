
#!/bin/bash
echo -n "enter year: "
read year
#condition: y % 4 == 0 && y % 100 !=0 || y % 400 == 0
if [ `expr $year % 4` -eq 0 -a `expr $year % 100` -ne 0 -o `expr $year % 400` -eq 0 ]
then
	echo "Leap Year"
else 
	echo "Not Leap Year"
fi

