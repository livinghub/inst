#!/bin/bash
dirPath="./paper_cirucit/"
exc="./qfr_example_lsv2"
files=$(ls $dirPath$folder)

for file in $files
do
  echo $exc $dirPath$file
#  timeout 1h $exc $dirPath$file
    timeout 1h $exc $dirPath$file >> "./lsv2_out.txt" &
done
