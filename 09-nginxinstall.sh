#!/bin/bash

# installing nginx through shellscript

userid=$( id -u)

if [ $userid -e 0 ]
then
  echo " you are in the root  user access good to go with nginx installation"
fi

yum install nginx -y