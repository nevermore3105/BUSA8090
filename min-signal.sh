#!/bin/bash
# save as time-signal.sh
# gives a time signal every hour when connected to cron
time=$(date +%M)
count=19
if test $time -lt 20; then
echo "Do nothing"
else
while test $count -lt $time; do
echo -e "\a"
sleep 1
count=$[$count+20]
done
fi
