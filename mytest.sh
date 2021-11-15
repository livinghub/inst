#!/bin/bash
dirPath="/home/lyh/Desktop/inst_16/"
exc="/home/lyh/qfr/build/qfr_example"
num="*_100_*"
a=0
#files=$(ls $dirPath$folder$num)
files=$(ls $dirPath$num)
for file in $files
do
#    sleep 5 &
#    echo $file
    timeout 2h $exc $file >> "/home/lyh/Desktop/16_out/$a.txt" &
    ((a++))
done
