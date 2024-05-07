#!/bin/bash

userid=$( id -u )

validate() {
    if [ $1 -ne 0 ]
    then 
      echo "INSTALLATION IS FAILED"
    else
      echo "INSTALLATION IS SUCCESS"
    fi
}

if [ $userid -ne 0 ]
then 
  echo "ERROR:PLEASE LOGIN TO ADMIN ACCESS"
  exit 1
else
  echo "NOW YOU ARE IN THE ROOT ACCESS"
fi

yum install git -y 
validate $? "Git Installation"

yum install mysql -y 
validate $? "Mysql Installation"

yum install postfix -y 
validate $? "Postfix Installation"


