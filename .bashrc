
# alias killpbyname = 'ps -A | grep <application_name> | awk '{print $1}' | xargs kill -9 $1'
# alias killpbyport
# or use $OSTYPE
export PLATFORM=$(uname -s)
[ -f /etc/bashrc ] && . /etc/bashrc
    
# heroku autocomplete setup
HEROKU_AC_BASH_SETUP_PATH=/Users/oguzozsaygin/Library/Caches/heroku/autocomplete/bash_setup && test -f $HEROKU_AC_BASH_SETUP_PATH && source $HEROKU_AC_BASH_SETUP_PATH;

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

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

export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-8.jdk/Contents/Home
# export JAVA_HOME=/Library/Java/JavaVirtualMachines/adoptopenjdk-11.0.1.jdk/Contents/Home

# iterm shell integrations
test -e "${HOME}/.iterm2_shell_integration.bash" && source "${HOME}/.iterm2_shell_integration.bash"

# Set CLICOLOR if you want Ansi Colors in iTerm2 
export CLICOLOR=1
export TERM=xterm-256color

