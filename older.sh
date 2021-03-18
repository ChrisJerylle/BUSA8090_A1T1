#!/bin/bash
# save as older.sh
# create three dummy files for testing of script
touch -t 202103081800 foo
touch -t 202103081801 goo
touch -t 202103081802 hoo
# get the oldest file name from the list of files
if [ $# -eq 0 ]
then
OLDEST=$(find . -maxdepth 1 -type f | cut -c3- |xargs ls -tr | head -1)
else
OLDEST="$1"
fi
# display oldest file name
echo "oldest file name: $OLDEST"
