**How to?**

cd ${HOME}

git clone https://github.com/VictorSabido/dotfiles

cd dotfiles

bash install.sh


#### Set zsh by default
```
chsh -s $(which zsh)
```

Is my shell set to zsh?
```
grep $USER /etc/passwd
```

Is zsh a valid login shell?
```
grep zsh /etc/shells
```
