#!/bin/bash

echo "Computing everything that's evenly divisible by 4 and 7"

for num in {1..200}
do
	four=$(echo "$num % 4" | bc)
	if [[ $four -eq 0 ]]
	then
		seven=$(echo "$num % 7" | bc)
		if [[ $seven -eq 0 ]]
		then
			echo $num " is divisible by 4 and 7"
		fi
	fi
done
