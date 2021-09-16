#!/bin/sh
# -delay n  (delay for n * 10 millisecond.)
# -loop n (no repeat if n=0, otherwise, repeat for n times.)
# -pause n (pause n between each loop)
TotalNum=`ls -l *.png|wc -l`
#DelayT=`(echo "500./$TotalNum"|bc)`
#DelayT=`(echo "1000./$TotalNum"|bc)`
DelayT=`(echo "2000./$TotalNum"|bc)`
echo '(Total Num, DelayT)' $TotalNum $DelayT
convert -delay $DelayT  -quality 100 *.png -loop 0  demo.gif
#convert -delay 100 demo.gif -delay 1000 demo.gif -loop 0 -pause 200 demo2.gif


#50 --> 10
#10 --> 50
#5 --> 100
