#!/bin/bash
i=10
echo ============='$RANDOM'=======
while((i--))
do echo $RANDOM;done
echo ==============awk============
i=10
while((i--))
do echo `echo |awk 'BEGIN{srand()}{print rand()}'`;done

