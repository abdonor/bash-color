cd /home
mkdir abdonor
cd ./abdonor
name=`cat /etc/hostname`
echo $name > nameMachine.txt

echo "export GIT_ABDONOR_PROMPT=~/.bash/bash-color" >> ~/.bashrc
echo "source \"${GIT_ABDONOR_PROMPT}/main.sh\" " >> ~/.bashrc
echo "NAMEFILE=`cat /home/abdonor/nameMachine.txt`" >> ~/.bashrc
echo "export PS1=\"\${NAMEFILE} \${debian_chroot:+(\$debian_chroot)}\[\033[01;33m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ \" " >> ~/.bashrc

source ~/.bashrc

echo "\n ABDONOR's COLOR BASH CONFIG IS DONE, RESTART YOUR PC!"
