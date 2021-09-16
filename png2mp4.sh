#!/bin/sh
#Filename='AX3K0';
#Filename='FIT9X';
Filename='osc-test8';
TotalNum=`ls -l *.png|wc -l`
echo $TotalNum
#Time=10
Time=60
FrameNum=`(echo "$TotalNum/$Time"|bc)`
echo $FrameNum
ffmpeg -framerate $FrameNum -i  ${Filename}%04d.png -vf "scale=trunc(iw/2)*2:trunc(ih/2)*2" -c:v libx264 -r $FrameNum -pix_fmt yuv420p  ${Filename}.mp4
