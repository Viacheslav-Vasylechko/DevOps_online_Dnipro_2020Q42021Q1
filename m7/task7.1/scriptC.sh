#!/bin/bash

sync_dir='/home/vvvasilechko/DevOps_online_Dnipro_2020Q42021Q1/m7/task7.1/sync_dir/'
backup_dir='/home/vvvasilechko/DevOps_online_Dnipro_2020Q42021Q1/m7/task7.1/backup_dir'
log_file='/home/vvvasilechko/DevOps_online_Dnipro_2020Q42021Q1/m7/task7.1/logfile'

rsync -ai --delete $sync_dir $backup_dir --log-file=$log_file --log-file-format="%t %o %f"


