# unset -f gc  ----> Quita la funcion alias gc
# unalias gc >/dev/null 2>&1 ----> Quita el alias y echa warnings a null


alias ea='vi ~/.bash_aliases; source ~/.bash_aliases && source $HOME/.bash_aliases && echo "Aliases sourced: OK."'
alias calias='cat $HOME/.bash_aliases' 

alias prj='cd /$HOME/projects'
alias sail='bash vendor/bin/sail'

# alias build-storage=mkdir storage\framework\views storage\framework\sessions storage\framework\cache

workspace() { docker exec -it workspace-visu bash -c "su sail" }

# unset -f gc 
unalias gc >/dev/null 2>&1
gc() { git checkout $*  }

unalias gpo >/dev/null 2>&1
gpo() { git pull origin $*  }

unalias gpu >/dev/null 2>&1
gpu() { git push $*  }


