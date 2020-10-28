# This script is sourced from .zshrc

# docker
alias dr="docker run -i -t"
alias dps="docker ps"
alias dpsa="docker ps -a"
alias dx='docker exec -i -t'
alias db='docker build -t'

# transmission
alias t-start='sudo service transmission-daemon start'
alias t-stop='sudo service transmission-daemon stop'
alias t-reload='sudo service transmission-daemon reload'
alias t-list='transmission-remote -n 'transmission:transmission' -l'
alias t-basicstats='transmission-remote -n 'transmission:transmission' -st'
alias t-fullstats='transmission-remote -n 'transmission:transmission' -si'
alias t-add="transmission-remote -a"

# convenience aliases
alias cd..='cd ..'
alias cd...='cd ../..'
alias ls='ls --color'
alias l='ls -lF'
alias dir='ls'
alias la='ls -lah'
alias ll='ls -l'
alias ls-l='ls -l'
alias j='jobs'
alias time='gtime --format "$(tput setab 255)$(tput setaf 160)took %es.$(tput sgr0)"'
alias vi='vim'
alias grep='grep -E --color'
alias ping='ping -c 3'
alias pstree='pstree -w'
alias c='pbcopy'
alias p='pbpaste'
alias pt='pbpaste | tee'
alias t='tee'
alias slp='/System/Library/CoreServices/"Menu Extras"/User.menu/Contents/Resources/CGSession -suspend'
alias bd='bg && disown %1'
alias pg='ps ax | grep -v "grep" | grep'
alias o='less'
alias no='yes n'
alias cl='clear;clear'
alias page='less -S'
alias start=open
alias ccat='ccat --bg=dark'
alias c.='code .'
alias code.='code .'
alias fd='fd --no-ignore'
alias ag='ag --hidden'

# custom aliases 
alias zshconfig="$EDITOR $HOME/.zshrc"
alias zshupdate="source $HOME/.zshrc"
alias ohmyzsh="$EDITOR $HOME/.oh-my-zsh"
alias termconfig='$EDITOR $HOME/.config/alacritty/alacritty.yml'
alias tmuxconfig='$EDITOR $HOME/.tmux.conf'
alias usrpkg="comm -23 <(pacman -Qqett | sort) <(pacman -Qqg base -g base-devel | sort | uniq)"
alias emacsconfig='$EDITOR $HOME/.emacs.d/init.el'
alias ls-device="sudo arp-scan --interface=en0 localnet"
alias ls-folder-size='du -sh * | sort -h'
alias emacs='emacs -nw'