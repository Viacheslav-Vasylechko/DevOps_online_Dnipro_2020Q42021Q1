#!/bin/bash

file_out=Most_reqested_pages
awk '{print $11}' $1 | sort | uniq -c | sort -gr > $file_out

