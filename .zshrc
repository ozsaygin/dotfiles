EDITOR="code"

alias emacs='emacs -nw'

# homemade binaries
export PATH="$HOME/bin/:$PATH"

alias zshconfig="code $HOME/.zshrc"
alias zshupdate="source ~/.zshrc"
alias ohmyzsh="code ~/.oh-my-zsh"
alias userpacks="comm -23 <(pacman -Qqett | sort) <(pacman -Qqg base -g base-devel | sort | uniq)"
alias ls-device="sudo arp-scan --interface=en0 localnet"
alias emacsconfig='emacs $HOME/.emacs.d/init.el'
alias tmuxconfig='$EDITOR $HOME/.tmux.conf'
alias termconfig='$EDITOR $HOME/.config/alacritty/alacritty.yml'
alias ohmyzsh='$EDITOR $HOME/.oh-my-zsh'

# Docker
alias dr="docker run -i -t"
alias dps="docker ps"
alias dpsa="docker ps -a"

alias dr='docker run --rm -i -t'
alias dps='docker ps'
alias dpsa='docker ps -a'

alias ls-devices='sudo arp-scan --interface=en0 --localnet'
alias ls-folder-size='du -sh * | sort -h'

# Transmission
alias t-start='sudo service transmission-daemon start'
alias t-stop='sudo service transmission-daemon stop'
alias t-reload='sudo service transmission-daemon reload'
alias t-list='transmission-remote -n 'transmission:transmission' -l'
alias t-basicstats='transmission-remote -n 'transmission:transmission' -st'
alias t-fullstats='transmission-remote -n 'transmission:transmission' -si'
alias t-add="transmission-remote -a"

export UCIT_LIB_DIR=/Users/oguzozsaygin/code/ucit-asp/libs

# Go
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export GOROOT=/usr/local/opt/go/libexec

# If you come from bash you might have to change your $PATH.
export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="/home/ozsaygin/.oh-my-zsh"

ZSH_THEME="theunraveler"

DISABLE_UPDATE_PROMPT="true"
export UPDATE_ZSH_DAYS=13
ENABLE_CORRECTION="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(fzf git node heroku docker npm pip yarn golang colored-man-pages)

source $ZSH/oh-my-zsh.sh

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# User configuration
export MANPATH="/usr/local/man:$MANPATH"
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

export ARCHFLAGS="-arch x86_64"

export PATH="/usr/local/opt/ruby/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"

#initialize tmux
if command -v tmux &>/dev/null && [ -z "$TMUX" ]; then
    tmux attach -t default || tmux new -s default
fi

# Load custom aliases
if [[ -f "$HOME/workspace/dotfiles/zsh_aliases.inc" ]]; then
    source "$HOME/workspace/dotfiles/zsh_aliases.inc"
else
    echo >&2 "WARNING: can't load shell aliases"
fi

# ZSH
# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH="/usr/local/bin:${PATH}" # git???

ZSH_THEME="theunraveler"
export LSCOLORS="Cxfxcxdxgxegedabagacad"
