#!/bin/bash
while true
do
  trap '' 2 #disable C-c SIGINT combination
  echo -n ">" 
  read word
  clear
  trap 2 #enable C-c combination
  sdcv --color -un "Apresyan (En-Ru)" $word | more
done
