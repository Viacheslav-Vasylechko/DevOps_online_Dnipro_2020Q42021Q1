#!/bin/bash

file_out=non_existent_pages
awk '{print $9, $11}' $1 | sort | grep '^404' | uniq -c | sort -gr > $file_out

