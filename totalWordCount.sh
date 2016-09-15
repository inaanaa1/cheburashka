#!/bin/bash
#theFile=$(cat $1)
rm copyFile
theFile2=$(cat $1| tr ' ' '\n' | sort | uniq)
for words in $theFile2;
do count=$(grep -o $words $1 | wc -w); 
echo $words $count >> copyFile 
done

cat copyFile