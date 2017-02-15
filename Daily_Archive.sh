#!/bin/bash
#
# Daily_Archive - Archive designated files & directories
########################################################
#
# Gather current data
#
DATE=$(date +%y%m%d)
#
# Set archive file name
#
FILE=archive$DATE.tar.gz
#
# Set configuration and destination file
#
CONFIG_FILE=/archive/Files_To_Backup
DESTINATION=/archive/$FILE
#
################# Main Script ##########################
#
# Check backup config file exists
#
if [ -f $CONFIG_FILE ]; then
    echo
else
    echo
    echo "$CONFIG_FILE dose not exist."
    echo "Backup not completed due to missing Configuration File"
    echo 
    exit
fi

#
# Build the names of all the files to backup
#
FILE_NO=1
exec < $CONFIG_FILE
#
read FILE_NAME
#
while [ $? -eq 0 ]; do
    if [ -f $FILE_NAME -o -d $FILE_NAME ]; then
        FILE_LIST="$FILE_LIST $FILE_NAME"
    else
        echo
        echo "$FILE_NAME, does not exist."
        echo "Obvioisly, I will not include it in this archive."
        echo "It is listed on line $FILE_NO of the config file."
        echo "Continuing to build archive list..."
        echo
    fi
    FILE_NO=$[ $FILE_NO + 1 ]
    read FILE_NAME
done

#
#################################################
#
# Backup the files and Compress Archive
#
echo "Starting archive..."
echo
#
tar -czf $DESTINATION $FILE_LIST 2> /dev/null
#
echo "Archive completed"
echo "Resulting archive file is $DESTINATION"
echo
#
exit









