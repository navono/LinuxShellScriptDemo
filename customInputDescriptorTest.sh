#!/bin/bash
# redirecting input file descriptor
#

exec 6<&0
exec 0< testout

count=1
while read line; do
    echo "Line #$count: $line"
    count=$[ $count+1 ]
done

exec 0<&6
read -p "Are you done now? " answer
case $answer in
    Y|y) echo "Goodbye";;
    N|n) echo "Sorry, this is the end";;
esac
