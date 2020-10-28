#!/bin/bash
#
# install.sh: Dotfile installer 
# Oguz Ozsaygin 2020/10/28


BASE=$(pwd)

# Migrate dotfiles
for rc in *rc tmux.conf .config .oh-my-zsh .gitconfig *inc; do
    mkdir -pv bak
    [ -e $HOME/."$rc" ] && mv -v $HOME/."$rc" bak/."$rc"
    ln -sfv "$BASE/$rc" $HOME/."$rc"
done

# Link local binaries
mkdir -p $HOME/bin
for bin in $BASE/bin/*; do
    ln -svf "$bin" $HOME/bin
done

# Setup homebrew and required packages
if [ "$(uname -s)" = 'Darwin' ]; then
    [ -z "$(which brew)" ] &&
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

    echo "Updating homebrew"

    # Recover packages from Brewfile
    brew bundle
fi
