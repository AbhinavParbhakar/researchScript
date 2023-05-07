#! /bin/bash
sudo apt-get install mlocate
sudo apt autoremove
ZIPLOCATION=$(locate "The Tokarsky-Marinov Finder, Tester and Prover.zip" |grep '/Downloads/')
java -version &> /dev/null
if [ $? -ne 0 ]; then
    echo "Java not installed on this machine. Please Install Java:"
    echo "Use the following link:"
    echo "https://www.oracle.com/ca-en/java/technologies/javase/javase8-archive-downloads.html"
    echo -e "\nDownload the 8u66 Development kit"
    echo "Download the file that ends in 'linux-x64.tar.gz'"
    
    JAVALOCATION=$(locate "jdk-8u66-linux-x64.tar.gz" | grep "/Downloads/")
    
    sudo mkdir -p /opt/jdk
    sudo cp -rf $JAVALOCATION /opt/jdk/
    cd /opt/jdk/
    sudo tar -zxf "jdk-8u66-linux-x64.tar.gz"
fi

JAVAVERSION=$(java -version 2>&1)
echo "$JAVAVERSION"



