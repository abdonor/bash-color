#!/bin/bash
echo "INSTALLING ABDONOR BASH COLOR \n"
mkdir ~/.bash
cd ~/.bash
git clone https://github.com/abdonor/bash-color.git
chmod 777 -R ~/.bash/
~/.bash/bash-color/run.sh
exec bash
echo "ABDONOR BASH COLOR WAS INSTALLED!\n"
