#!/bin/bash
cat /dev/urandom |
od -x |
head -n 1|
cut -d ' ' -f 2- |
awk -v ORS=":" '{
     for(i=1; i<=NF; i++){
        if(i == NF){
             ORS = "\n";
         }
         print substr($i,1,2) ":" substr($i,3,2);
     }
}'

