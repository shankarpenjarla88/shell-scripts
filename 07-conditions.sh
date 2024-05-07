#!/bin/bash

# checking the number is greater than 10 or not

number=$1

if [$number -ge 10]
then
  echo "$number is greater then 10"
else
  echo "$number is no greater than 10"
fi
