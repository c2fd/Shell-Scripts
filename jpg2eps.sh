#!/bin/sh
format="jpeg"
echo $format

filelist=`ls *.jpg`
for i in ${filelist}
do
	echo ${i##*.}
	#convert ${i%.*}.jpeg  eps3:${i%.*}.eps
	convert ${i%.*}.jpg  eps3:${i%.*}.eps
done
