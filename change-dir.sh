#!/bin/bash

change_dir="fd -L -td"

case "${1}" in
  "") # display dir no hidden
    change_dir="fd -L -td"
  ;;
  a) # display hidden
    a='-H'
    change_dir="${change_dir} ${a}"
  ;;
  h) # list /home
    m='.'
    h='/home'
    change_dir="${change_dir} ${m} ${h}"
  ;;
  r) # list /root
    m='.'
    r='/'
    change_dir="${change_dir} ${m} ${r}"
  ;;
  *)
    printf "> undefined command\n"
  ;;
esac

dir=$(${change_dir} | fzf)
cd "$dir" && pwd | xclip -r -selection clipboard
