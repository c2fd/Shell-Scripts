#!/bin/sh
##convert avi into series of png files

#FILENAME=glide.mp4
FILENAME=`ls *.mp4`
echo $FILENAME
#ffmpeg -i $FILENAME -f image2 output%05d.jpg
#ffmpeg -i glide.mp4  -f image2 image-%03d.jpg
for i in $FILENAME
do
	echo ${i##*.}
	convert -verbose $i   ${i%.*}%03d.png #  image_%03d.png
	TotalNum=`ls -l ${i%.*}*.png|wc -l`
	DelayT=`(echo "500./$TotalNum"|bc)`
	echo '(Total Num, DelayT)' $TotalNum $DelayT
	#convert -delay $DelayT  -quality 100 ${i%.*}*.png -loop 0  ${i%.*}.gif
	#rm ${i%.*}*.png
done

