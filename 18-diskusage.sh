#!/bin/bash

DATE=$(date +%F)
SCRIPT_NAME=$0
LOG_FOL=/tmp/
LOG_FILE=$LOG_FOL/$SCRIPT_NAME-$DATE.log

R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

messages=""

DISK_USAGE=$(df -hT | grep -vE 'tmpfs|filesystem')
DISK_USAGE_THRESHOLD=1

#IFS=Internal Filed saperator is space.

while IFS= read line
do
  echo "output:$line" & >>$LOG_FILE
  usage=$( echo $line | awk '{print $6}' | cut -d % -f1 )
  partition=$( echo $line | awk '{print $1}')

  if [ $usage -gt $DISK_USAGE_THRESHOLD ]
  then
    messages+="high disk usage on $partition:$usage  /n"
  fi

done <<< $DISK_USAGE

echo -e  "Message is :$messages"

echo "$messages & Date $(date)" | mail -s "HIGH DISK USAGE" shankarpenjarla88@gmail.com


