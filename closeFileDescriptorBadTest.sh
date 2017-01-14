#!/bin/bash
# testing closing file descriptors
#

exec 3>closeFileDescriptor
echo "This is a test line of data" >&3
exec 3>&-

cat closeFileDescriptor

exec 3> closeFileDescriptor
echo "This'll be bad" >&3
