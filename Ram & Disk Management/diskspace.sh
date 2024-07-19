#!/bin/bash
echo "my first script file"

#echo "my name is $1"

#echo "my age is $2"

#echo "my hobby is playing $3"

echo "as of today's $(date)"

echo "Here is your disk space: $(df -h)"

#echo "Here is the size of each file: $(df -h) | awk '{print $2}'"

#echo "ram size: $(free -h)"

echo "file size is:$( df -h | awk ' NR==2 {print$2}')"

echo "full size column is $( df -h | awk '{print$2}')"

