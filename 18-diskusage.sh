#!/bin/bash

DATE=$(date +%F)
SCRIPT_NAME=$0
LOG_FOL=/tmp/
LOG_FILE=$LOG_FOL/$SCRIPT_NAME-$DATE.log

R="\e[31m"
G="\e[32m"
N="\e[0m"
Y="\e[33m"

DISK_USAGE=$(df -hT | grep -vE 'tmpfs|filesystem')
DISK_USAGE_THRESHOLD=1

#IFS=Internal Filed saperator is space.

while IFS= read line
do
  echo "output:$line" & >>$LOG_FILE

done <<< $DISK_USAGE


