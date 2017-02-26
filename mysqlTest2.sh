#!/bin/bash
# sending multiple conmmands to MySQL

MYSQL=$(which mysql)
$MYSQL mytest -u test <<EOF
show tables;
select * from employees where salary > 100;
EOF
