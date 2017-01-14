#!/bin/bash
testUser=navono
if grep $testUser /etc/passwd
then
    echo "This is first command"
    echo "other command echo:"
    ls -a /home/$testUser/.b*
fi
