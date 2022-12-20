#!/bin/bash

#Z1.1
mkdir $1
#Z1.2
mkdir $1/D1
mkdir $1/D2
mkdir $1/D3
mkdir $1/D4


touch $1/D2/F1.txt
touch $1/D3/F1.txt
touch $1/D4/F1.txt

#Z1.3
ln -s /etc/passwd $1/D1/passlink

#Z1.4
readlink $1/D1/passlink

#Z1.5
ln $1/D3/F1.txt $1/D2/F2.txt

#Z1.6
chmod 600 $1/D2/F2.txt

#Z1.7
sudo chown :users $1/D2/F2.txt

#Z1.8
sudo chgrp users $1/D3

#Z1.9
chmod -x $1/D3

#Z1.10
chmod -w $1/D2

#Z1.11
chmod -r $1/D4

#Z1.12
chmod +t $1/D4

#Z1.13
touch $1/D1/scr1.sh
chmod u+x $1/D1/scr1.sh
chmod g+x $1/D1/scr1.sh
chmod o-x $1/D1/scr1.sh

#Z1.14
chmod u+s $1/D1/scr1.sh
chmod g+s $1/D1/scr1.sh
