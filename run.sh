cd /home
mkdir abdonor
cd ./abdonor
name=`cat /etc/hostname`
echo '('$name')' > nameMachine.txt

CMM1='export GIT_ABDONOR_PROMPT=~/.bash/bash-color'
CMM2='source "${GIT_ABDONOR_PROMPT}/main.sh"'
CMM3='NAMEFILE=`cat /home/abdonor/nameMachine.txt`'
CMM4='export PS1="\${NAMEFILE} \${debian_chroot:+(\$debian_chroot)}\[\033[01;33m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[00m\] \[$txtcyn\]\$git_branch\[$txtred\]\$git_dirty\[$txtrst\]\$ " '

echo -e $CMM4"\n$(cat ~/.bashrc)" > ~/.bashrc
echo -e $CMM3"\n$(cat ~/.bashrc)" > ~/.bashrc
echo -e $CMM2"\n$(cat ~/.bashrc)" > ~/.bashrc
echo -e $CMM1"\n$(cat ~/.bashrc)" > ~/.bashrc

echo $CMM1 >> ~/.bashrc
echo $CMM2 >> ~/.bashrc
echo $CMM3 >> ~/.bashrc
echo $CMM4  >> ~/.bashrc

source ~/.bashrc

echo "ABDONOR's COLOR BASH CONFIG IS DONE, RESTART YOUR PC!"
