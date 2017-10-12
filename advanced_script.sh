#!/bin/bash

# for loops
for arg in $1 $2 $3
do
    echo $arg
done

iles=`ls .`
#for f in *
for f in $files
do 
    echo $f
done

for f in $files
do
    #if [ ! -d $f ]
    if [ -f $f ]
    then
        echo "Found a file:" $f
    fi
done

func() {
    echo "This is a function with name:" $NAME
}

NAME=funct
func

for a
do
    echo $a
done

LIMIT=0
while [ $LIMIT -lt 10 ]
do
    echo $LIMIT
    #LIMIT=$(($LIMIT+1))
    let "LIMIT += 1"
done

while [ "$stop" != "stop" ]
do
    echo "Should I stop?"
    read stop
done

LIMIT=0
until [ $LIMIT -eq 10 ]
do
    echo $LIMIT
    let "LIMIT += 1"
done

s -l > files.txt

cat files.txt > /dev/null

cat files_doesnotexist.txt > /dev/null

cat files_doesnotexist.txt 2> /dev/null

cat files.txt 2> /dev/null

cat files.txt >& /dev/null
cat files.txt > files2.txt
cat doesnotexist.txt >& /dev/null

 if loops without using 'if'
echo "Hi" && echo "my" && echo "name" && echo "is" && echo "Michael"
echo "Hi" && echo "my" && cat files_wrong.txt 2> /dev/null && echo "is" && echo "Michael"

array[0]="Hi"
array[50]="mom!"
for n in "${array[@]}"
do
    echo $n
done

# -z means 'true if the following string is null
if [ ! -z "$1" ]
then
    echo $1
fi
