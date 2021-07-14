sudo apt-get update -y

# PHP
sudo apt -y install software-properties-common
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update
sudo apt -y install php7.4
# EXTENSIONS
sudo apt install php7.4-common php7.4-mysql php7.4-xml php7.4-xmlrpc php7.4-curl php7.4-gd php7.4-imagick php7.4-cli php7.4-dev php7.4-imap php7.4-mbstring php7.4-opcache php7.4-soap php7.4-zip php7.4-intl -y
# sudo apt-get install php7.4-curl php7.4-gd php7.4-json php7.4-mbstring php7.4-intl php7.4-mysql php7.4-xml php7.4-zip


# COMPOSER
curl -sS https://getcomposer.org/installer | php
sudo mv composer.phar /usr/local/bin/composer
php -r "readfile('https://getcomposer.org/installer');" | php
# composer --version

sudo apt-get install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# OhMyZsh Theme
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc