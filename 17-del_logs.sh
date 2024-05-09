#!/bin/bash

log_dir=/home/centos/app-logs

date=$(date +%F)

script_name=$0

log_fol=/home/centos/shell-script-logs

log_file=$log_fol/$script_name/$date.log

files_del=$(find $log_dir -name "*.log" -type f -mtime +14)

echo "This are the deleting files:$files_del"

while read Line 
do
  echo "Deleting the log fles which are more than two weeks:$line" &>>$log_file
  rm -rf $line 
done <<< $files_del