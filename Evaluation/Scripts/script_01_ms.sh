#!/bin/bash
# Purpose: fault injection for the message server service
# Date: 22 Jan 2020
$LOGFILE=/scripts/logs/script_01_ms.log
CURRENT_DATE=$(date "+%Y-%m-%d %H:%M:%S")
echo "Message server killed | $CURRENT_DATE" >> $LOGFILE
PID=`ps -eaf | grep ms.sapDEV | grep -v grep | awk '{print $2}'` 
if [[ "" !=  "$PID" ]]; then
kill -9 $PID
fi 


