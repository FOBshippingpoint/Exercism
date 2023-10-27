# !/usr/bin/env bash

(( $1 % 3 )) || sound+='Pling'
(( $1 % 5 )) || sound+='Plang'
(( $1 % 7 )) || sound+='Plong'

echo ${sound:-$1}
