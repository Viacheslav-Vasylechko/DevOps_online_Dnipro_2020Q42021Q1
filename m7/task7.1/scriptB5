#!/bin/bash

file_out=most_requests
awk '{print $4, $5}' $1 | sort | uniq -c | sort -gr | head -n 5 > $file_out

