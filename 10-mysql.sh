#!/bin/bash

#installing mysql 

userid=$(id -u)

if [ $userid -ne 0 ]
then 
  echo "ERROR:PLEASE LOGIN TO ADMIN ACCESS"
  exit 1 
else
  echo "NOW YOU ARE IN ROOT ACCESS,INSTALLATION IN PROCESS"
fi
  yum install mysql -y

  if [ $? -ne 0 ]
  then
    echo "installation of mysql is incomplete"
  else
    echo "MySql installation is completed"
  fi
   yum install postfix -y 

    if [ $? -ne 0 ]
  then
    echo "installation of postfix is incomplete"
  else
    echo "postfix installation is completed"
  fi
