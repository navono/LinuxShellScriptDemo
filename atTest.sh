#!/bin/bash
#
echo "This script ran at $(date + %B%d,%T)" > atTest.out
echo >> atTest.out
sleep 5
echo "This is the script's end.." >> atTest.out
