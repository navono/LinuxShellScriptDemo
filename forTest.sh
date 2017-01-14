#!/bin/bash

#for test in Alabama Alaska Arizona Arkansas California Colorado
#for test in Alabama Alaska Arizona Arkansas California Colorado "New York"


#file="filename"
#for state in $(cat $file)


#IFS.OLD=$IFS
#IFS=$'\n'
#<use the new IFS value in code>
#IFS=$IFS.OLD


#list=("Alabama Alaska Arizona Arkansas California Colorado "New York"")
#for test in $list


for file in /home/navono/*
do
    if [ -d "$file" ]
    then
	echo "$file is a directory"
    elif [ -f "$file" ]
    then
	echo "$file is a file"
    fi
done
