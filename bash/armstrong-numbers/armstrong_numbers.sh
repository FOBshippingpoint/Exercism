#!/usr/bin/env bash

n=$1
digits=${#n}
sum=0
for (( i=0; i<${#n}; i++ )); do
    sum=$((sum + ${n:i:1}**digits))
done

[[ $sum == "$n" ]] && echo true || echo false