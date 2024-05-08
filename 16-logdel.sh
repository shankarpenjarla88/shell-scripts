#!/bin/bash

applogdir=/home/centos/app-logs

date=$(date +%F)

logsdir=/home/centos/shell-scripts-logs

scriptname=$0

logfile=$logsdir/$0-$date.log

files_to_delete=$( $applogdir -name "*.log" -type f -mtime +14)

echo "$files_to_delete"

