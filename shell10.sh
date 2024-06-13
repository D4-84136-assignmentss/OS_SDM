
#!/bin/bash
#fibonacci series

function fibo()
{
	count=$1
	a=0
	b=1
	for((i=1; i<=$count; i++))
	do
		echo -n "$a "
		c=`expr $a + $b`
		a=$b
		b=$c
	done
	echo -e -n "\n"
}

fibo 8
result=$(fibo 15)
echo "fibo Terms: $result"

