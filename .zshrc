# for missing commands like npm
#source /home/johnny/.bash_profile

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

# add ~/.emacs.d/bin to your PATH!
export PATH="$HOME/.emacs.d/bin:$PATH"

#
# # ex - archive extractor
# # usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.tar.xz)    tar xJf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}
#
# Alias
alias q="exit"
alias sc="source"
alias dc="docker"
alias cls="clear"
alias cs="clear"
alias cl="clear"
alias pm="pnpm"
alias pmd="pnpm run dev"
alias ls="exa"
alias ll="exa -alh"
# alias tree="exa -T --git-ignore"
alias tree="exa --tree --level=2"
alias v="nvim"
alias g="git"
alias c="code"
alias cmm='git add -A; git commit -m'
alias gp="git push"
alias gpl="git pull"
alias gst="git status"
alias cpwd="pwd | xclip -selection clipboard"
alias t="tmux -u"
alias em="emacsclient -c -a 'emacs'"
alias pa="paru"
#

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# theme/plugins
source ~/.config/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.config/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.config/zsh/zsh-history-substring-search/zsh-history-substring-search.zsh

# history substring search options
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

########################################
# This Always mus be THE END LINE ######
# ######################################
#
eval "$(starship init zsh)"



# pnpm
export PNPM_HOME="/home/johnny/.local/share/pnpm"
export PATH="$PNPM_HOME:$PATH"
# pnpm end

#lvim
export PATH=/home/johnny/.local/bin:$PATH

# bun completions
[ -s "/home/johnny/.bun/_bun" ] && source "/home/johnny/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
