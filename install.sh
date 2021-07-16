#!/bin/bash

# bash install.sh

##
# BASH menu script that checks:
#   - Memory usage
#   - CPU load
#   - Number of TCP connections
#   - Kernel version
##

server_name=$(hostname)

function php_7_and_extensions () {
    echo ""
    echo "Instalando PHP 7.4... "
    sudo apt-get update -y
    sudo apt -y install software-properties-common
    sudo add-apt-repository ppa:ondrej/php
    sudo apt-get update
    sudo apt -y install php7.4
    # EXTENSIONS
    sudo apt install php7.4-common php7.4-mysql php7.4-xml php7.4-xmlrpc php7.4-curl php7.4-gd php7.4-imagick php7.4-cli php7.4-dev php7.4-imap php7.4-mbstring php7.4-opcache php7.4-soap php7.4-zip php7.4-intl -y
    echo "Instalación php terminada"
}

function composer () {
    echo ""
    echo "Instalando Composer... "
    sudo apt-get update -y
    curl -sS https://getcomposer.org/installer | php
    sudo mv composer.phar /usr/local/bin/composer
    php -r "readfile('https://getcomposer.org/installer');" | php
    echo "Instalación composer terminada"
}

function zsh () {
    echo ""
    echo "Instalando zsh... "
    sudo apt-get update -y
    sudo apt-get install zsh
    sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
    echo "Instalación zsh terminada"
}

function powerlevel10k () {
    echo ""
    echo "Instalando tema powerlevel10k... "
    sudo apt-get update -y
    git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
    echo "Instalación tema powerlevel10k terminada"
}

function dotfiles () {
    echo ""
    echo "Ejecutando dotfiles... "
    sh ~/.dotfiles/dots_install.sh
    echo "Dotfiles ejecutados"
}



##
# Color  Variables
##
green='\e[32m'
blue='\e[34m'
clear='\e[0m'

##
# Color Functions
##

ColorGreen(){
    echo -ne $green$1$clear
}
ColorBlue(){
    echo -ne $blue$1$clear
}


menu(){
echo -ne "
¿Que quieres instalar?
$(ColorGreen '1)') PHP 7.4 con extensiones
$(ColorGreen '2)') Composer
$(ColorGreen '3)') Zsh && OhMyZsh
$(ColorGreen '4)') OhMyZsh theme (Powerlevel10k)
$(ColorGreen '5)') Ejecutar .dotfiles
$(ColorGreen '0)') Exit
$(ColorBlue 'Choose an option:') "
        read a
        case $a in
            1) php_7_and_extensions ; menu ;;
            2) composer ; menu ;;
            3) zsh ; menu ;;
            4) powerlevel10k ; menu ;;
            5) dotfiles ; menu ;;
        0) exit 0 ;;
        *) echo -e $red"Wrong option."$clear; WrongCommand;;
        esac
}

menu