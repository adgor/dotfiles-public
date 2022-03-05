# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/johnny/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall
#
# Alias
alias vim="nvim"
alias cls="clear"
alias g="git"
#
########################################
# This Always mus be THE END LINE ######
# ######################################
#
eval "$(starship init zsh)"

