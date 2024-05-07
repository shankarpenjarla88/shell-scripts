#!/bin/bash

var1=$1
var2=$2

echo "The script name is : $0"

echo "retreiving the special variable one:$var1"
echo "retrieving all special variables:$@"
echo "Number of variables:$#"