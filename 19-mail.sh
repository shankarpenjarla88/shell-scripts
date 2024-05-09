#!/bin/bash

to_add=$1
subject=$2
body=$3
team_name=$4
alert_type=$5

#echo "all_args : $@"

final_body= $(sed -e 's/TEAM_NAME/DEVOPS_TEAM/g' -e 's/ALERT_TYPE/HIGH-DISK_USAGE/g' -e "s/message/$body template.html)

echo "$final_body & Date $(date)" | mail -s "$subject" "$to_add"