#!/bin/bash
if [ -z $1 -o -z $2 ]
then echo 'you need to enter: first - the word of interest and second - the filename ' && exit 1;
	
fi
i=$(grep -o $1 $2 | wc -w);

echo "The number of the words of interest is: " $i;