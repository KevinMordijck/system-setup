# Lines configured by zsh-newuser-install
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory nomatch
unsetopt autocd beep extendedglob notify
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/kevin/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

## Functions ##

genpasswd() {
    local l=$1
    [[ -z $l ]] && l=32  
    tr -dc A-Za-z0-9 < /dev/urandom | head -c ${l} | xargs
}


## Aliases ##

alias q='exit'
alias pin='ping github.com'
alias work='cd ~/Workspace'

