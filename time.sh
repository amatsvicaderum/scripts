#!bin/bash

c="\e[1;32m"
d="\e[0m"
dt=$(date +'%j')
percent=$(($dt * 100 / 365))

while true
do
  clear
  printf "${c}"
  time=$(date +'%H : %M : %S')
  time+=' | '
  time+=$percent
  cols=$(tput cols)
  rows=$(tput lines)
  y=$((($cols-${#time})/2))
  x=$(($rows/2))
  tput clear
  tput cup $x $y
  echo $time
  printf "${d}"
  sleep 1
done
