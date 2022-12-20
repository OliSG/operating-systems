#!/bin/bash

#-----------------------------------------------------------------------------------
#z1

fun1()
{

local tablica=("$@")

for ((i=0;i<$#;i++))
do
	for ((j=0;j<$#-i-1;j++))
	do
		if [ ${tablica[j]} -gt ${tablica[$((j+1))]} ]
		then
			temp=${tablica[j]}
			tablica[$j]=${tablica[$((j+1))]}
			tablica[$((j+1))]=$temp
		fi
	done
done
echo ${tablica[*]}
}


fun1 $*

#--------------------------------------------------------------------------------
#z2

fun2()
{
if [ $1 -le 0 ] || [ $2 -le 0 ]
then
	echo error
	exit -1

else

	declare -A Array2D
	RowNum=$1
	ColumnNum=$2

	for ((i=1;i<=RowNum;i++)) do
	    for ((j=1;j<=ColumnNum;j++)) do
	    	let x=$i*$j
	        Array2D[$i,$j]=$x
	    done
	done
	#echo ${Array2D[*]}
	

	for ((j=1;j<=ColumnNum;j++)) do
		for ((i=1;i<=RowNum;i++)) do
			printf "%9s" ${Array2D[$i,$j]}
		done
		echo
	done
fi
}

fun2 $1 $2


#z3

fun3()
{
	declare -a tab
	tab=($@)
	cal=0
	
	for (( i=0;i<$#-1;i++ ))
	do
		a=${tab[i]}
		b=${tab[i+1]}
		sum=$a+$b
		wyn=($sum)/2
		cal=$cal+$wyn
	done

	echo $cal | bc -l
}


fun3 $*
