#!/bin/bash
# testing signal trapping
#
trap "echo ' Sorry! I have trapped Ctrl-C'" SIGINT
#
echo This is a test script
#
count=1
while [ $count -le 5 ]; do
    echo "Loop #$count"
    sleep 1
    count=$[ $count+1 ]
done
#
# remove the trap

trap -- SIGINT
echo "I just removed the trap"
#
count=1
while [ $count -le 5 ]; do
    echo "Loop #$count"
    sleep 1
    count=$[ $count+1 ]
done

