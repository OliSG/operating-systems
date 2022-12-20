#!/bin/bash

#z1
fun1()
{
	if ! [ -r $1 ]
	then
		echo error, cant read
		exit -1
	fi
	
	if [ -e $2 ]
	then
		>$2
	fi
	
	if [ -e $3 ]
	then
		>$3
	fi
	
	while IFS= read -r line
	do
		x=$(( 1 + $RANDOM%2 ))
		#echo $x	
	
		if [ $x == 1 ]
		then
			file=$2
		elif [ $x == 2 ]
		then
			file=$3
		fi
		
		
		if [ -e $file ]
		then
			if ! [ -w $file ]
			then
				echo error, cant write
				exit -1
			fi
		fi
		
		
		echo "$line" >> $file
				
	done < $1

}

#------------------------------------------
#z2
fun2()
{
	if ! [ -d $1 ]
	then
		echo error isnt directory
		exit -1
	fi
	
	if ! [ -w $1 ]
	then
		echo error cant write
		exit -1
	fi
	
	if ! [ -r $2 ]
	then
		echo error cant read
		exit -1
	fi
	
	while IFS= read -r line
	do
		for i in "$line"
		do
			mkdir "$1/$line"
		done
	
	
	done < $2 
	
	
	 
}

fun2 $1 $2
