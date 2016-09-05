#!/bin/bash
if [ !$1 -o !$2 ];
then echo "you need to enter: first - the word of interest and second - the filename ";
fi
i=$(grep -o $1 $2 | wc -w);

echo "The number of the words of interest is: " $i;