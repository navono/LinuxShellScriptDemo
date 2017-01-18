#!/bin/bash
# using a function in a script
#
function func {
    echo "This is an example of a funciotn"
}

count=1
while [ $count -le 5 ]; do
    func
	count=$[ $count + 1 ]
done

func

function f{

}
