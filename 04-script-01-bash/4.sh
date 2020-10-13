#!/usr/bin/env bash
IP_list=( "192.168.0.1" "173.194.222.113" "87.250.250.242" ) #Массив из адресов
while  (( 1 == 1 )) #Бесконечный цикл
do
  for IP in "${IP_list[@]}"  #Цикл проходит каждый адрес в массиве IP_list
  do
    nc -zvw3 "${IP}" 80 > /dev/null 2>&1
    if  [ $? != 0 ]
    then
      echo "${IP}" >> error.log
      a=1 #Переменная флаг, для условия выхода из скрипта
    fi
  done

  if (( a == 1 )) #Условие выхода из скрипта
  then
    exit 1
  fi
done
