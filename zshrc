autoload -Uz compinit promptinit
compinit
promptinit

# Command Completion
autoload -Uz compinit
compinit

zstyle ':completion:*' menu select

# History Search
HISTFILE="$HOME/.config/zsh/histfile"
HISTSIZE=99999
SAVESIZE=99999
autoload -Uz up-line-or-beginning-search down-line-or-beginning-search
zle -N up-line-or-beginning-search
zle -N down-line-or-beginning-search

[[ -n "$key[Up]"   ]] && bindkey -- "$key[Up]"   up-line-or-beginning-search
[[ -n "$key[Down]" ]] && bindkey -- "$key[Down]" down-line-or-beginning-search

# Colours 
setopt COMPLETE_ALIASES
export PROMPT='%F{white}%n%f@%F{red}%m%f %F{014}%~%f %# '
