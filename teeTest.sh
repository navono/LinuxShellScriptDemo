#!/bin/bash
# tee testing
#
tempfile=teeTestFile

echo "This is the start of the test" | tee $tempfile
echo "This is the second line of the test" | tee -a $tempfile

