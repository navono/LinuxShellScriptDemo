#!/bin/bash
testUser=navonoaa
if grep $testUser /etc/passwd
then
    echo "This is first command"
    echo "other command echo:"
    ls -a /home/$testUser/.b*
else
    echo "Not exist $testUser"
fi
