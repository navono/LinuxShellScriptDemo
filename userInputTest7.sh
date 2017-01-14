#!/bin/bash
# testing parameters
#
scriptName=$( basename $0)

# so can use ${!#}(not ${$#}) represent the last parameter
#
if [ $# -ne 2 ]; then
    echo  Usage: $scriptName a b
else
    total=$[ $1 + $2]
    echo
    echo The total is $total
    echo
fi
