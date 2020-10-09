#!/usr/bin/env bash
counter=1
log_file="/tmp/port_checking.log"
if [ ! -f "$log_file" ]
then
  truncate -s 0 "$log_file"
else
  touch "$log_file"
fi

while [ $counter -le 5 ]
do
  counter=$(( counter + 1 ))
  nc -zv 192.168.0.1 80 >> $log_file 2>&1
  nc -zv 173.194.222.113 80 >> $log_file 2>&1
  nc -zv 87.250.250.242 80 >> $log_file 2>&1
done
