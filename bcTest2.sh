#!/bin/bash
var1=10.1
var2=34.2
var3=50.2
var4=45

var5=$(bc << EOF
scale = 4
a1=($var1 *$var2)
b1=($var3 * $var4)
a1+b1
EOF
)

echo The final answer for this mess is $var5
