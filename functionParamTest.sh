#!/bin/bash
# passing parameters to a function

function add {
    if [ $# -eq 0 ] || [ $# -gt 2 ]; then
        echo -1
    elif [ $# -eq 1 ]; then
        echo $[ $1+$1 ]
    else
        echo $[ $1+$2 ]
    fi
}

echo -n "Adding 10 and 15: "
value=$(add 10 15)
echo $value

echo "Let's try adding just one number: "
value=$(add 10)
echo $value

echo "Now trying adding no numbers: "
value=$(add)
echo $value

echo "Finally, try adding three numbers: "
value=$(add 1 2 3)
echo $value
