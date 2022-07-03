#!/bin/bash
shopt -s expand_aliases


sudo pacman -Syu

sudo pacman -S ttf-font-awesome papirus-icon-theme noto-fonts-emoji noto-fonts ttf-fira-code htop glances rofi telegram-desktop alacritty element-desktop obs-studio  flameshot deluge-gtk git nitrogen vim github-cli p7zip polybar nemo libarchive xpdf nvidia-installer-dkms nemo-fileroller

## change default image pdf viewer and image viewer

## dev tools
## install custom package for picom
## install nvidia drivers
## https://github.com/pijulius/picom

## install nvidia stuff.

## sudo pacman -S nvidia-installer-dkms -- this package is already installed above.
## sudo nvidia-installer-dkms
## sudo systemctl reboot


## Firefox theme
## https://github.com/mut-ex/minimal-functional-fox

sudo pacman -S pycharm-community-edition intellij-idea-community-edition jdk-openjdk nodejs npm python


yay -S freedownloadmanager lens-bin zoom visual-studio-code-bin google-chrome --noconfirm
## nemo setup 


## adding vs code extension
wget https://raw.githubusercontent.com/mhsattarian/nemo-open-in-vscode/master/vscode.nemo_action -O ~/.local/share/nemo/actions/vscode.nemo_action

## setting default terminal as kitty for nemo
gsettings set org.cinnamon.desktop.default-applications.terminal exec alacritty

## if this doesn't work try this
## gsettings set org.gnome.desktop.default-applications.terminal exec kitty


## themes

cd /usr/share/themes/
sudo git clone https://github.com/EliverLara/Nordic.git
cd ~

## fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v1.1.0/FiraCode.zip
sudo unzip FiraCode.zip -d /usr/share/fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v1.1.0/Meslo.zip
sudo unzip Meslo.zip -d /usr/share/fonts
wget https://github.com/Prakashh21/Fonts/archive/refs/tags/v4.0.zip
sudo bsdtar --strip-components=1 -xvf v4.0.zip -C /usr/share/fonts/
fc-cache -vf


## enabling hardware decoding on chrome and chromium acceleration

## install the package libva-vdpau-driver-chromium and flag --enable-features=VaapiVideoDecoder to the google-chrome.desktop file in usr/share/applications## / while launching the application

#  paru -S libva-vdpau-driver-chromium --noconfirm
# update switch to firefox


# remianinig --> automation script for putting dotfiles back into place and setting up git bare repo again to track dotfiles from where left of and push to the dotfiles apollo, better solution would be to create a seperate script for the same.


##############  Starting script



#Files to get rid of before config checkout :

#.bashrc
#.Xresources
#.bash_profile
#~/.config/gtk-3.0
#~/.config/xfce4

rm -Rf ~/.bashrc ~/.Xresources ~/.bash_profile ~/.config/gtk-3.0 ~/.config/gtk-2.0 ~/.config/xfce4/ ~/.config/i3/ ~/.config/polybar ~/.config/picom ~/add-dots.sh ~/.config/kitty ~/.config/rofi ~/.zshrc ~/.zprofile ~/packages.txt ~/setup.sh ~/.Xnord

echo "dotfiles" >> .gitignore

git clone --bare https://github.com/Prakashh21/dotfiles-apollo.git $HOME/dotfiles

alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

config checkout 

git config --global user.email "prakashope@gmail.com"
git config --global user.name "Prakash"

exit 0





# Outline for the automation script.. 

# Files to get rid of before config checkout :

# .bashrc
# .Xresources

# ## installing dotfiles in a new system


# echo "dotfiles" >> .gitignore

# git clone --bare https://github.com/Prakashh21/dotfiles-apollo.git $HOME/dotfiles

# alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

# config checkout 



# ## again re setup the bare repo and tack dotfiles

# git init –bare $HOME/dotfiles

# alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

# config config --local status.showUntrackedFiles no

# config add .vimrc

# git config --global user.email "prakashope@gmail.com"
# git config --global user.name "Prakash"

# Config commit -m “added .vimrc”
# config push --set-upstream origin apollo 







# ## fonts archive

# ## use wget to download https://github.com/Prakashh21/Fonts/archive/refs/tags/v1.0.zip





