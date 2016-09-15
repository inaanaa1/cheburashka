#!/bin/bash
if [ -z $1 ] || [ -z $2 ]
then echo 'you need to enter: first - the word of interest and second - the filename ' && exit 1;
fi
i=$(grep -n ".*" $2 | grep "^$1:");
echo $i