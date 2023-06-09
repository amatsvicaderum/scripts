#!/bin/bash

while true
do
  PS1=" "
  read -p "$PS1" input
  if [ "$input" = 'x' ]
  then
    break
  else
  ~/.local/bin/sgpt \""$input"\"
  fi
done
