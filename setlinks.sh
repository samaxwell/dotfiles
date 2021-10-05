#!/bin/bash

# Verifies if the cofiguration files in 'configs' exist within the home directory.
# If not, symlinks will be created
#
# Usage:
#  ./setlinks.sh


dotfilesPath=$HOME/.dotfiles

configs=( .tmux.conf .vimrc )
for config in ${configs[@]}
do 
    if [ ! -e $HOME/$config ]; then
#        echo "$config already exists"
#    else
        ln -s $dotfilesPath/$config $HOME/$config
    fi
done

