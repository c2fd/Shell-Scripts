#!/bin/sh


filelist=`ls *.gif`

for i in ${filelist}
do
	echo ${i##*.}
	FILENAME=${i%.*}.gif
	PNGNAME=${i%.*}%04d.png
	convert $FILENAME  $PNGNAME
done
