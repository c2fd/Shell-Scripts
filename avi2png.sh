#!/bin/sh
##convert avi into series of png files
#FILENAME=Y473H4cY6g-1CE.AVI
FILENAME=$1 #Y473H4cY6g-1CE.AVI
#glide.mp4
#ffmpeg -i $FILENAME -f image2 output%05d.jpg
#ffmpeg -i glide.mp4  -f image2 image-%03d.jpg
convert -verbose $FILENAME  image_%03d.png

