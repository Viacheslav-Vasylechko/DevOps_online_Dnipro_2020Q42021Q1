#!/bin/bash

file_out=Most_ip_reqests
awk '{print $1}' $1 | sort | uniq -c | sort -gr | head -n 1 > $file_out

