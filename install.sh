sudo apt-get update -y

sudo apt-get install zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"


ln -fs .dotfiles/.bash_aliases $HOME/.bash_aliases
ln -fs .dotfiles/.zshrc $HOME/.zshrc
ln -fs .dotfiles/.p10k.zsh $HOME/.p10k.zsh
ln -fs .dotfiles/.gitconfig $HOME/.gitconfig


source ${HOME}/.bash_aliases 
