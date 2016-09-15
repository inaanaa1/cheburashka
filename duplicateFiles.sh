#! /bin/bash
rm checklist;
rm checklist2;
rm checklist3;
if [ -z $1 ]
then
	find . -name '*' -type f -exec md5 "{}" + > checklist;
else
	find $1 -name '*' -type f -exec md5 "{}" + > checklist;
fi
sort checklist | grep -o "=.*" | uniq -d > checklist2;
theChecklist3=$(cat checklist2 | tr -d '= ');
for i in $theChecklist3
do  grep $i checklist >> checklist3; 
done 
cat checklist3



