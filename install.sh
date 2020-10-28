#!/bin/bash

BASE=$(pwd)

# 
for rc in *rc tmux.conf .config .oh-my-zsh .gitconfig *inc; do
    mkdir -pv bak
    [ -e $HOME/."$rc" ] && mv -v $HOME/."$rc" bak/."$rc"
    ln -sfv "$BASE/$rc" $HOME/."$rc"
done

# Binaries
mkdir -p $HOME/bin
for bin in $BASE/bin/*; do
    ln -svf "$bin" $HOME/bin
done

# Homebrew
if [ "$(uname -s)" = 'Darwin' ]; then
    [ -z "$(which brew)" ] &&
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

    echo "Updating homebrew"

    # Recover packages from Brewfile
    brew bundle
fi
