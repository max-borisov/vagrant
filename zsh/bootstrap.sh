#!/usr/bin/env bash

echo "Install ZSH"
curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh
apt-get install -y zsh
zsh
chsh -s `which zsh`
cat /var/www/Vagrant/zsh/.zsh_config >> ~/.zshrc
source ~/.zshrc
