#! /bin/bash
# Irina Naanaa
# purpose: find size of the files and directries

search_dir=""

if [ -z $1 ]
then
	search_dir=$(pwd)
else
	search_dir=$1
fi
for f in $(ls $search_dir)
do 	
	if [ -d $search_dir/$f ] 
	then du -sh $search_dir/$f
	fi
done