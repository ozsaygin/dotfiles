EDITOR="code"

# Go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export GOROOT=/usr/local/opt/go/libexec

# Local binaries
export PATH="$HOME/bin/:$PATH"

# Custom variables
export UCIT_LIB_DIR=/Users/oguzozsaygin/code/ucit-asp/libs
export ZSH="$HOME/.oh-my-zsh"
export LSCOLORS="Cxfxcxdxgxegedabagacad"

# Oh-my-zsh
ZSH_THEME="theunraveler"
DISABLE_UPDATE_PROMPT="true"
export UPDATE_ZSH_DAYS=13
ENABLE_CORRECTION="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(fzf git node heroku docker npm pip yarn golang colored-man-pages)

source $ZSH/oh-my-zsh.sh

# Configuration
export ARCHFLAGS="-arch x86_64"
export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8

# Ssh
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='code'
else
  export EDITOR='code'
fi

# Initialize tmux
if command -v tmux &>/dev/null && [ -z "$TMUX" ]; then
    tmux attach -t default || tmux new -s default
fi

# Load custom aliases
if [[ -f "$HOME/zsh_aliases.inc" ]]; then
    source "$HOME/zsh_aliases.inc"
else
    echo >&2 "WARNING: can't load shell aliases"
fi
