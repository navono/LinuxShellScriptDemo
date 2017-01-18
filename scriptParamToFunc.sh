#!/bin/bash
# tring to access script parameters inside a function

function badfunc {
    echo $[ $1*$2 ]
}

scriptname=$(basename $0)

if [ $# -eq 2 ]; then
   # value=$(badfunc)
    value=$(badfunc $1 $2)
    echo "The result is $value"
else
    echo "Usage: $scriptname a b"
fi

