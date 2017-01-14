#!/bin/bash
jump_dir=/home/liao

if [ -d $jump_dir ]; then
    echo "The $jump_dir directory exists"
    cd $jump_dir
    ls
else
    echo "The $jump_dir directory does not exist"
fi
