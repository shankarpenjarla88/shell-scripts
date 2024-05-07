#!/bin/bash

R="\e[31m"
G="\e[32m"
Y="\e[33m"
N="\e[0m"

Date=$(date)
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
  echo -e " $R ERROR:PLEASE LOGIN WITH ROOT ACCESS $N"
  exit 1
else
  echo -e "$G NOW YOU ARE IN ROOT ACCESS<GOOD TO GO WITH INSTALLATION $N"
fi

for i in $@
do
   yum list installed $i
if [ $? -ne 0 ]
then
  echo "$i is not installed need to install"
  yum install $i -y &>>$logfile1
else
  echo "$i is already installed"
fi
  validate $? "$i INSTALLATION IS" 
done


