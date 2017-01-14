#!/bin/bash
#testing=$(date)
#echo "The date and time are: " $testing

today=$(date +%y%m%d)
ls /usr/bin -al > log.$today
