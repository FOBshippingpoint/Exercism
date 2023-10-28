#!/usr/bin/env bash

s=${1^^}
is_start=true
acronym=''

for (( i=0; i<${#s}; i++ )); do
  c=${s:i:1}
  if [[ $c =~ [A-Z] ]]; then
    if [ $is_start = true ]; then
      acronym+=$c
      is_start=false
    fi
  elif [[ ! $c =~ \' ]]; then
    is_start=true
  fi
done

echo $acronym
