# fim
File integrity monitoring tool to check system file hashes from one system against another. 

# Disclaimer
This is in alpha testing! Please use with caution. 

# How to use this tooland the system to be tested. 

On the control system, clone this repo and run 

cd fim
chmod +x create_hashes.txt 
./create_hashes.txt

This will hash all system files from all directories listed in the create_hashes.sh file and save the file as $HASHES (hashes.txt by default). 

Copy the hashes file to the test system. 

On the test system, clone this repo and run

cd fim
chmod +x verify_hashes.txt 
./verify_hashes.txt

Differences in hashes will be printed to stdout and saved to diff.txt. Differences of concern can be checked by hand. 
