#!/bin/bash



# 4203e800158---

# ./change_power_limit.sh 0x4203e800158-321

base="0x4203e800158"

filename="./numbas"
while read -r line; do
	echo "This is the power setting: $line"
	sudo wrmsr 0x610 $line
	sudo make #data_$line
	sudo wrmsr 0x610 0x4203e800158320
done < "$filename"