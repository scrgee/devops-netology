#!/usr/bin/env bash
counter=1
while [ $counter -le 5 ]
do
  counter=$(( counter + 1 ))
  nc -zv 192.168.0.1 80 >> port_checking.log 2>&1
  nc -zv 173.194.222.113 80 >> port_checking.log 2>&1
  nc -zv 87.250.250.242 80 >> port_checking.log 2>&1
done
