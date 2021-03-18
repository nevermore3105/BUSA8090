#!/bin/bash
# save as older.sh
# save in the same directory as the target file, in this case, file foo hoo goo. 
# for testing, use touch -t 202103081800 foo, touch -t 202103081801 goo, and touch -t 202103081802 hoo, syntax is ./older.sh foo goo hoo

# present the paraments time setting as second and assign into variables
i1=$(date -r $1 +%s)
i2=$(date -r $2 +%s)
i3=$(date -r $3 +%s)


echo "The oldest file:"
# compare between variable
if [[ "$i1" -lt "$i2" ]] && [[ "$i1" -lt "$i3" ]];then
    echo $1
elif [[ "$i2" -lt "$i1" ]] && [[ "$i2" -lt "$i3" ]];then
    echo $2
else
    echo $3
fi
