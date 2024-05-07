#!/bin/bash


date=$(date +%F)
scriptname=$0
logfile=/tmp/$scriptname-$date.log

validate() {
    if [ $1 -ne 0 ]
    then 
      echo "$2 IS FAILED"
    else
      echo "$2 IS SUCCESS"
    fi
}

userid=$( id -u )

if [ $userid -ne 0 ]
then 
  echo "ERROR:PLEASE LOGIN TO ADMIN ACCESS"
  exit 1
else
  echo "NOW YOU ARE IN THE ROOT ACCESS"
fi

yum install git -y &>>$logfile
validate $? "Git Installation"

yum install mysql -y &>>$logfile
validate $? "Mysql Installation"

yum install postfix -y  &>>$logfile
validate $? "Postfix Installation"


