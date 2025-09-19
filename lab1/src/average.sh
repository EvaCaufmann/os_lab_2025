#!/bin/bash

file=/home/dasha/osis/os_lab_2025/lab1/src/numbers.txt
if [ -s $file ]
then  
echo "The $file exists and isnt blank"
else 
echo "Blank"
fi

count=0
sum=0

while read -r line;do
	for var in $line;do 
		((count++))
		((sum+= var))
	done
done < "$file"

average=$((sum / count))
echo "Count: $count, Average: $average"

