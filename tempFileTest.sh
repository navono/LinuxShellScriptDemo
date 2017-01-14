#!/bin/bash
# creating and using a temp file
#

tempFile=$(mktemp tmpFile.XXXX)
exec 3>$tempFile

echo "This script writes to temp file $tempFile"

echo "This is a test" >&3
exec 3>&-

echo "Done creating temp file. The content are:"
cat $tempFile
rm -f $tempFile 2> /dev/null
