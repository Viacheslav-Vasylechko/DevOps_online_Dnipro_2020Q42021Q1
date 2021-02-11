#!/bin/bash

file_out=reqests_from_each_ip
awk '{print $1}' $1 | sort | uniq -c | sort -gr > $file_out

