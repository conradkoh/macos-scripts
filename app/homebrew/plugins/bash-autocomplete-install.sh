brew install bash-completion
brew install git
echo "Copy and add the following line to your bash profile: ";
echo "[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion";
read;
vim ~/.bash_profile