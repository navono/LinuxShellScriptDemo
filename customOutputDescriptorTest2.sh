#!/bin/bash
# storing STDOUT, then coming back to it
#

exec 3>&1
exec 1>>customOutput
echo "This should store in the output file"

exec 1>&3
echo "Now things should be back to normal"

# close file decriptor
exec 3>&-
