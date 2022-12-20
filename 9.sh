#!/bin/bash

fun1()
{
	if [ -e $1 ]
	then
		if ! [ -r $1 ]
		then
			echo cant read
			exit -1
		fi
	fi
	
	if [ -e $2 ]
	then	
		> $2
		if ! [ -w $2 ]
		then
			echo cant write
			exit -1
		fi
	#fi
	#else
	else

  		if [ ! -w $(dirname $2) ]; then
		echo "Error, cant create file"
		exit -1
		fi
	fi

	declare -A stats
	while read line
	do
		for word in $line
		do
			if [[ ${stats[$word]} ]]
			then
				stats[$word]=$((stats[$word] +1 ))
			else
				stats[$word]=1
			fi
		done
	done < $1
	

	for word in ${!stats[@]}
	do
		echo "$word ${stats[$word]}" >> $2
	done
	sort -t " " -k2 -r -n -o $2 $2
	
	
}

fun1 $1 $2
