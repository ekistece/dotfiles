source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source ~/.zsh/spaceship-prompt/spaceship.zsh

# Plugins
autoload -U compinit promptinit

# ENV
export PATH=$PATH:~/.local/bin/

# History
SAVEHIST=10000
HISTFILE=~/.zsh_history

# Autocomplete
compinit
zstyle ':completion:*' menu select

# Autocomplete fish
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# More binds
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line

# Aliases
push () { curl -F"file=@$*" https://ttm.sh; }
alias ll="ls -la"
alias cls=clear

# MOTD
ufetch
