#!/bin/bash
# Purpose: fault injection for the central instance service
# Date: 22 Feb 2020
LOGFILE=/scripts/logs/script_03_test_interface.log
CURRENT_DATE=$(date "+%Y-%m-%d %H:%M:%S")
umount -f -l /interface
echo "File system umounted | $CURRENT_DATE" >> $LOGFILE


