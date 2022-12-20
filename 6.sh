#!/bin/bash

#--------------------------------------------------
#1
fun1()
{
	let "a= $1 + $2 "
	let "b= $1 - $2 "
	
	if [ $b -eq 0 ]
	then
		echo "error"
		exit -1
	else
		let "c= $a / $b "
	fi
	echo $c
	return $c 
}


fun1 $1 $2
echo $?

#----------------------------------------------------
#2
fun2()
{
	if [ $# -gt 1 ]
	then
		echo "error"
		exit -1	
	else
		if [ $1 -le 1 ]
		then
			echo 1
		else
			fact=$(fun2 $(( $1 -1 )))
			echo $(( $1 * fact ))
		fi
	fi
	
}

fun2 $1
#------------------------------------------
#3
fun3()
{
	if [ $# -gt 1 ]
	then
		echo "error"
		exit -1
	else
		fact=1

		for((i=2;i<=$1;i++))
		{
		fact=$((fact * i)) 
		}

		return $fact
	fi
	

}
fun3 $1
echo $?

#--------------------------------
#4

arr=("$@")

fun4()
{
	local arr=${arr[@]}
	
	sum=0
	for i in ${arr[@]}
	do
		let sum+=$i
	done
	return $sum
}

fun4
echo $?
