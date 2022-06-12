#!/bin/bash
shopt -s expand_aliases



rm -Rf ~/.bashrc ~/.Xresources ~/.bash_profile ~/.config/gtk-3.0 ~/.config/gtk-2.0 ~/.config/xfce4/ ~/.config/i3/ ~/.config/polybar ~/.config/picom ~ /add-dots.sh ~/.config/kitty ~/.config/rofi ~/.zshrc ~/.zprofile ~/packages.txt ~/setup.sh ~/.Xnord

echo "dotfiles" >> .gitignore

git clone --bare https://github.com/Prakashh21/dotfiles-apollo.git $HOME/dotfiles

alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

config checkout 

exit 0

# git config --global user.email "prakashope@gmail.com"
# git config --global user.name "Prakash"


