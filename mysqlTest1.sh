#!/bin/bash
# send a command to the MySQL server

MYSQL=$(which mysql)
$MYSQL mytest -u test -e 'select * from employees'
