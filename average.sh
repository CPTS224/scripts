#!/bin/bash

echo "$@"

sum=0
for num in "$@"
do
	((sum=sum+num))
done
echo "The sum of the numbers is "$sum
echo "The number of number is "$#

echo "Computing the average..."
echo "$sum/$#" | bc -l

