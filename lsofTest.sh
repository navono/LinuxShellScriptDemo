#!/bin/bash
# testing lsof with file decriptors
#

exec 3> lsofOutput
exec 6> lsofOutput2
exec 7< testout

lsof -a -p $$ -d 0,1,2,3,6,7 
