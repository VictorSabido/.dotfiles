#!/bin/bash

ERROR='\033[0;31m'
NO_FORMAT="\033[0m"
GREEN="\e[32m"
C_DODGERBLUE1="\033[38;5;33m"

export GIT_DISCOVERY_ACROSS_FILESYSTEM=1

git --work-tree=/home/victor/.dotfiles fetch
HEADHASH=$(git --work-tree=/home/victor/.dotfiles rev-parse HEAD)
UPSTREAMHASH=$(git --work-tree=/home/victor/.dotfiles rev-parse master@{upstream})

ColorGreen(){
    echo $GREEN$1$NO_FORMAT
}

gitpull(){
    echo "Aplicando cambios de remoto ..."
    git --work-tree=/home/victor/.dotfiles pull origin
    echo "$(ColorGreen 'Cambios aplicados!')"
}

if [ "$HEADHASH" != "$UPSTREAMHASH" ]
then
    echo "${ERROR}.dotfiles tiene cambios en remoto que no están en local ${NO_FORMAT}"
    echo
    echo "${C_DODGERBLUE1}¿Quieres actualizar .dotfiles?${NO_FORMAT}"
    echo "
        $(ColorGreen '1)') Si
        $(ColorGreen '2)') No
    "
    read a
    case $a in
        1) gitpull ;;
        2) exit 0 ;;
        *) exit 0 ;;
    esac
fi