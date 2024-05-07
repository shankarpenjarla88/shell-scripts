#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

Date=$( date + %F )
scriptname=$0
logfile1=/tmp/$scriptname-$Date.log

validate() {
    if [ $1 -ne 0 ]
    then
      echo -e " $2 $R INSTALLATION IS FAILED $N"
      exit 1
    else
      echo -e " $2 $G INSTALLATION IS SUCCESS $N"
    fi

}



userid=$(id -u)

if [ $userid -ne 0 ]
then
  echo "ERROR:PLEASE LOGIN WITH ROOT ACCESS"
  exit 1
else
  echo "NOW YOU ARE IN ROOT ACCESS<GOOD TO GO WITH INSTALLATION"
fi

for i in $@
do
   yum install $i -y  &>>$logfile1
   validate $? "$i INSTALLATION IS" 
done


