#!/bin/bash

file_out=bots
#grep 'bot' $1 | awk '{print $1, $11}' | sort | uniq -c | sort -gr > $file_out
grep 'bot' $1 | awk '{print $1}' | sort | uniq -c | sort -gr | awk '{print $2}' | nslookup | grep name | awk '{print $4}' > $file_out

