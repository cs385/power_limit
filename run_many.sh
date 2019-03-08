#!/bin/bash



# 4203e800158---

# ./change_power_limit.sh 0x4203e800158-321

base="0x4203e800158"

for i in `seq 800 -8 8`;
do
		val=`echo "obase=16; $i" | bc`
		echo $i
        # ./change_power_limit.sh 
done
