#!/bin/bash
# send data to the table in the MYSQL database

MYSQL=$(which mysql)

if [ $# -ne 4 ]
then
    echo "Usage: $0 empid lastname firstname salary"
else
    statement="insert into employees values ($1, '$2', '$3', $4)"
    echo $statement
    $MYSQL mytest -u test <<EOF
    $statement
EOF

    if [ $? -eq 0 ]; then
        echo Data successfully added
    else
        echo Problem adding data
    fi
fi
