# if [ -f ~/.bashrc ]; then . ~/.bashrc; fi


# aliases

alias vrc='vim ~/.bashrc'
alias src='source ~/.bashrc'
alias erc='emacs -nw ~/.bashrc'
alias enit='emacs ~/.emacs.d/init.el'
alias ll='ls -lF'
alias lah='ls -lahF'
alias lac='ls -lacF'

alias em='emacs -nw'

# alias killpbyname = 'ps -A | grep <application_name> | awk '{print $1}' | xargs kill -9 $1'
# alias killpbyport

# transmission aliases
alias t-start='sudo service transmission-daemon start'
alias t-stop='sudo service transmission-daemon stop'
alias t-reload='sudo service transmission-daemon reload'
alias t-list='transmission-remote -n 'transmission:transmission' -l'
alias t-basicstats='transmission-remote -n 'transmission:transmission' -st'
alias t-fullstats='transmission-remote -n 'transmission:transmission' -si'

# or use $OSTYPE
export PLATFORM=$(uname -s)
[ -f /etc/bashrc ] && . /etc/bashrc

    
# heroku autocomplete setup
HEROKU_AC_BASH_SETUP_PATH=/Users/oguzozsaygin/Library/Caches/heroku/autocomplete/bash_setup && test -f $HEROKU_AC_BASH_SETUP_PATH && source $HEROKU_AC_BASH_SETUP_PATH;
[ -f ~/.fzf.bash ] && source ~/.fzf.bash
export NODE_PATH=/usr/local/lib/node_modules
export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/opt/icu4c/sbin:$PATH"

# added by Anaconda3 5.2.0 installer
export PATH="/anaconda3/bin:$PATH"

# # prompt
# if [ "$PLATFORM" = Linux ]; then
#   PS1="\[\e[1;38m\]\u\[\e[1;34m\]@\[\e[1;31m\]\h\[\e[1;30m\]:"
#   PS1="$PS1\[\e[0;38m\]\w\[\e[1;35m\]> \[\e[0m\]"
# else
#   ### git-prompt
#   __git_ps1() { :;}
#   if [ -e ~/.git-prompt.sh ]; then
#     source ~/.git-prompt.sh
#   fi
  
#   PS1='\[\e[34m\]\u\[\e[1;32m\]\[\e[0;33m\]:\[\e[m\]\w\[\e[1;30m\]$(__git_ps1)\[\e[1;31m\]> \[\e[0m\]'
# fi

# maven bash completion
. ~/.maven_bash_completion.bash

# git completion
[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion

export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-11.0.1.jdk/Contents/Home

# iterm shell integrations
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

export PATH="/usr/local/opt/icu4c/bin:$PATH"
export PATH="/usr/local/sbin:$PATH"
export PATH="/usr/local/sbin:$PATH"


###-begin-npm-completion-###
#
# npm command completion script
#
# Installation: npm completion >> ~/.bashrc  (or ~/.zshrc)
# Or, maybe: npm completion > /usr/local/etc/bash_completion.d/npm
#

# if type complete &>/dev/null; then
#   _npm_completion () {
#     local words cword
#     if type _get_comp_words_by_ref &>/dev/null; then
#       _get_comp_words_by_ref -n = -n @ -n : -w words -i cword
#     else
#       cword="$COMP_CWORD"
#       words=("${COMP_WORDS[@]}")
#     fi

#     local si="$IFS"
#     IFS=$'\n' COMPREPLY=($(COMP_CWORD="$cword" \
#                            COMP_LINE="$COMP_LINE" \
#                            COMP_POINT="$COMP_POINT" \
#                            npm completion -- "${words[@]}" \
#                            2>/dev/null)) || return $?
#     IFS="$si"
#     if type __ltrim_colon_completions &>/dev/null; then
#       __ltrim_colon_completions "${words[cword]}"
#     fi
#   }
#   complete -o default -F _npm_completion npm
# elif type compdef &>/dev/null; then
#   _npm_completion() {
#     local si=$IFS
#     compadd -- $(COMP_CWORD=$((CURRENT-1)) \
#                  COMP_LINE=$BUFFER \
#                  COMP_POINT=0 \
#                  npm completion -- "${words[@]}" \
#                  2>/dev/null)
#     IFS=$si
#   }
#   compdef _npm_completion npm
# elif type compctl &>/dev/null; then
#   _npm_completion () {
#     local cword line point words si
#     read -Ac words
#     read -cn cword
#     let cword-=1
#     read -l line
#     read -ln point
#     si="$IFS"
#     IFS=$'\n' reply=($(COMP_CWORD="$cword" \
#                        COMP_LINE="$line" \
#                        COMP_POINT="$point" \
#                        npm completion -- "${words[@]}" \
#                        2>/dev/null)) || return $?
#     IFS="$si"
#   }
#   compctl -K _npm_completion npm
# fi

###-end-npm-completion-###
#export PATH=/usr/local/Cellar/node/11.4.0/bin/react-native
export PATH="$HOME/Library/Haskell/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
