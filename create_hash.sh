#!/bin/bash
# This script will create a hash for every file on the system which will be saved to $HASHES (defined in var.txt).

# Include variables
source var.txt

# Generate list of all files on system
find /etc /boot /var /root /bin /sbin /usr -type f ! -path "/var/log*" > $FILELIST

# Perform MD5 hash of each file and save to file
NUMBEROFFILES=$(cat $FILELIST | wc -l)
#COUNTER=1

rm $HASHES

input=filelist
while IFS= read -r line
do
        echo "Hashing File $COUNTER / $NUMBEROFFILES"
        md5sum "$line" >> $HASHES
        COUNTER=$(expr $COUNTER + 1)
done < "$input"
