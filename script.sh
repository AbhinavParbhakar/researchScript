#! /bin/bash
sudo apt-get install mlocate
sudo apt autoremove
ZIPLOCATION=$(locate "The Tokarsky-Marinov Finder, Tester and Prover.zip" |grep '/Downloads/')
java
if [ $? -ne 0 ]; then
    echo "Java not installed on this machine. Installing Java..."
    
fi



