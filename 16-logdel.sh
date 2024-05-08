#!/bin/bash

applogdir=/root/app-logs

date=$(date +%F)

logsdir=/home/centos/shell-scripts-logs

scriptname=$0

logfile=$logsdir/$scriptname-$date.log

files_to_delete=$( $applogdir -name "*.log" -type f -mtime +14)

echo "$files_to_delete"

while read line 

do

#we wil write all the statements here

echo "Deleting $line" &>>$logfile
rm -rf $line


done <<< $file_to_delete

