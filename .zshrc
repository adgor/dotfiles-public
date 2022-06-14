# for missing commands like npm
source /home/johnny/.bash_profile

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
alias ll="ls -la"
alias v="nvim"
alias cls="clear"
alias g="git"
alias t="tmux -u"
#

# theme/plugins
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ./.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ./.config/zsh/zsh-history-substring-search/zsh-history-substring-search.zsh

# history substring search options
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

########################################
# This Always mus be THE END LINE ######
# ######################################
#
eval "$(starship init zsh)"

