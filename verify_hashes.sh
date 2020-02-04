#!/bin/bash
# This script verifies if hashes match hash list

# Include variables
source var.txt

# Check hashes stored in $HASHES (defined in var.txt) and print differences. Also save differences to diff.txt.
md5sum -c $HASHES | grep "FAILED" | tee diff.txt
