#!/bin/bash
val1=baseball
val2=ping

# should be \>, because > is a redirection
# so well generat a file named 'ping'
if [ $val1 > $val2 ]; then
    echo "$val1 is greater than $val2"
else
    echo "$val1 is less than $val2"
fi
