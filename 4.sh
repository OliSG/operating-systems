#!/bin/bash

#1
mkdir $2

# ./search.sh ~/test t

#2 
find $1 -type f -name "*.txt"

#3
find $1 -type l
 
#4
find $1 -type f -name "*.sh" -perm /a=x

#5
find $1 -type d -iname "[ad]*"

#6
find $1 -type f -empty -user student

#7
find $1 -type f -size +1M -group student

#8
find $1 -type f -mmin 120

#9
find $1 -type d -perm /a=t

#10
find $1 -type f \( -perm /u=s -o -perm /g=s \)

#11
find /dev/ -type b -type c

#12
find $1 -type d -empty -exec rm -d {} \;

#13
find $1 -type f -size +100M -exec mv {} $2 \;

#14
find $1 -type d -name "Z*" -exec cp -r {} $2 \;
