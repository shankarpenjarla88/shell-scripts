#!/bin/bash

userid=$(id-u)

# writing the code to install git.

if[ $userid -ne 0 ]
then
  echo "Please login through admin access"
else
  echo "Now you are in root access"
fi

yum install git -y