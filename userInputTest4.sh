#!/bin/bash
# Testing the $0 parameter
#
#echo The zero parameter is set to: $0

# Because $0 show the absolute path. If just want
# the script file name, must use basename
name=$(basename $0)
echo The script name is: $name
