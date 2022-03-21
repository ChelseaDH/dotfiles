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

bindkey "^F" fzf-file-widget  # Ctrl+F file search (fzf)
bindkey "^[[A" fzf-history-widget  # Up (fzf)
bindkey "^[[B" fzf-history-widget  # Down (fzf)
bindkey "${terminfo[kcuu1]}" fzf-history-widget  # Up (fzf)
bindkey "${terminfo[kcud1]}" fzf-history-widget  # Down (fzf)
source /usr/share/fzf/key-bindings.zsh

# Colours 
setopt COMPLETE_ALIASES
export PROMPT='%F{white}%n%f@%F{red}%m%f %F{014}%~%f %# '

export PATH="$PATH:$HOME/bin"

# Aliases
# Git
alias gs='git status'
alias ga='git add'
alias gl='git log'
alias gc='git commit'
alias gca='git commit --amend'
alias gcane='git commit --amend --no-edit'
alias gp='git push'
alias gpfwl='git push --force-with-lease'
alias gpl='git pull'
