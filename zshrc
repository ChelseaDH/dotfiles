autoload -Uz compinit promptinit
compinit
promptinit

# Command Completion
autoload -Uz compinit
compinit

zstyle ':completion:*' menu select

# History
HISTFILE=$HOME/.config/zsh/history
HISTSIZE=99999
SAVEHIST=99999
setopt sharehistory extendedhistory histignorealldups histignorespace histreduceblanks

autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

[[ -n "$key[Up]"   ]] && bindkey -- "$key[Up]"   up-line-or-beginning-search
[[ -n "$key[Down]" ]] && bindkey -- "$key[Down]" down-line-or-beginning-search

# Colours 
setopt COMPLETE_ALIASES
export PROMPT='%F{white}%n%f@%F{red}%m%f %F{014}%~%f %# '
