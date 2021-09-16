#!/bin/sh
format="png"
echo $format
filelist=`ls`

for i in ${filelist}
do
	echo ${i##*.}
	convert ${i%.*}.png  eps3:${i%.*}.eps
	#convert ${i%.*}.jpg  eps3:${i%.*}.eps
done
