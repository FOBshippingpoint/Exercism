#!/usr/bin/env bash

(( $# != 2 )) && echo 'Usage: hamming.sh <string1> <string2>' && exit 1

a=$1
b=$2
(( ${#1} != ${#2} )) && echo 'strands must be of equal length' && exit 1

hamming_distance=0

for (( i=0; i<${#1}; i++ )); do
  [[ "${a:i:1}" != "${b:i:1}" ]] && (( hamming_distance++ ))
done

echo $hamming_distance
