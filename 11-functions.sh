#!/bin/bash


date=$(date +%F)
scriptname=$0
logfile=/tmp/$scriptname-$date.log

R="\e[31m"
G="\e[32m"
N="\e[0m"

validate() {
    if [ $1 -ne 0 ]
    then 
      echo -e "$2 IS  $R FAILED $N"
    else
      echo -e "$2 IS $G SUCCESS $N"
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

yum install mysqlll -y &>>$logfile
validate $? "Mysql Installation"

yum install postfix -y  &>>$logfile
validate $? "Postfix Installation"


