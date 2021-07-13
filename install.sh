sudo apt-get update -y

sudo apt-get install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# PHP
sudo apt -y install software-properties-common
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt -y install php7.4

# COMPOSER
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
php -r "readfile('https://getcomposer.org/installer');" | php

# composer --version



ln -fs .dotfiles/.bash_aliases $HOME/.bash_aliases
ln -fs .dotfiles/.zshrc $HOME/.zshrc
ln -fs .dotfiles/.p10k.zsh $HOME/.p10k.zsh
ln -fs .dotfiles/.gitconfig $HOME/.gitconfig


source ${HOME}/.bash_aliases 
