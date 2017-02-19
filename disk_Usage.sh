#!/bin/bash
#
# Find big disk space usage in various directories
#
CHECK_DIR=" /var/log"
#
################### Main Script ######################
#
DATE=$(date '+%y%m%d')
#
exec > disk_space_$DATE.rpt
#
echo "Top Ten Disk Space Usage"
echo "for $CHECK_DIR Directories"
#
for DIR_CHECK in $CHECK_DIR; do
    echo ""
    echo "The $DIR_CHECK Directory:"
#
# Create a list of top ten disk space uage
    du -S $DIR_CHECK 2>/dev/null |
    sort -rn |
    sed '{11,$D; =}' |
    sed 'N; s/\n/ /' |
    gawk '{printf $1 ":" "\t" $2  "\t" $3 "\n"}'
#
done
#
exit
