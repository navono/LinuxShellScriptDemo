#!/bin/bash
# redirecting SQL output to a variable

MYSQL=$(which mysql)

# -B means specifies for the mysql program to work in batch mode
# -s: silent
dbs=$($MYSQL mytest -u test -Bse 'show databases')
for db in $dbs
do
    echo $db
done
