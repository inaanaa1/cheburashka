#!/bin/bash

curl -L -o yahoo_index.html $1;

images=$(grep '<img' yahoo_index.html | sed 's/^.*http/http/;s/gif.*/gif/;s/png.*/png/;s/jpg.*/jpg/' | grep -E 'http.*gif|http.*png|http.*jpg');
for image in $images
do 
curl -O $image
done


