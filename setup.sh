#!/bin/bash
shopt -s expand_aliases


sudo pacman -Syu

sudo pacman -Sy ttf-font-awesome papirus-icon-theme noto-fonts-emoji noto-fonts neofetch ttf-fira-code htop btop rofi telegram-desktop alacritty xfce4-taskmanager element-desktop obs-studio gparted flameshot deluge-gtk git nitrogen vim github-cli p7zip polybar nemo nemo-fileroller intel-media-driver intel-gpu-tools libva-intel-driver libva ffmpeg libva-utils libarchive xpdf 
-installer-dkms 




## get mirrors -- curl https://files.snehit.dev/pacman-mirrorlist-in > /tmp/pacman-mirrors-in && cat /tmp/pacman-mirrors-in /etc/pacman.d/mirrorlist | sudo tee /etc/pacman.d/mirrorlist




## optional
## dracula gtk
## gsettings set org.gnome.desktop.interface gtk-theme "Dracula"
## gsettings set org.gnome.desktop.wm.preferences theme "Dracula"

## dracula icon
## gsettings set org.gnome.desktop.interface icon-theme "Dracula"


## dev tools
## install custom package for picom
## install nvidia drivers
## https://github.com/pijulius/picom

## install nvidia stuff.

## sudo pacman -S nvidia-installer-dkms -- this package is already installed above.
## nvidia-installer-dkms -t
## sudo nvidia-installer-dkms
## sudo systemctl reboot


## Firefox theme
## https://github.com/mut-ex/minimal-functional-fox
## for firefox theme to work
## toolkit.legacyUserProfileCustomizations.stylesheets = true
## install script -----> sh -c "$(curl -fsSL https://raw.githubusercontent.com/mut-ex/minimal-functional-fox/master/install.sh)"

## to enable webrendering on firefox 

## install intel-media-driver (added in the above package list)

## enable these fields in firefox about:config 

##    gfx.webrender.all -- true Set this to TRUE to enable WebRender, or to FALSE to disable it.
##    gfx.webrender.software -- false This preferences determines if the CPU is used. If this is set to TRUE, WebRender will use the CPU, if set to FALSE, it will use the GPU but only if the GPU is capable.
##    gfx.webrender.compositor	true
##    media.ffmpeg.vaapi.enabled  = true
##    media.rdd-vpx.enabled = true

sudo pacman -Sy pycharm-community-edition intellij-idea-community-edition jdk-openjdk nodejs npm python docker docker-compose meson uthash 

# uthash is a build dependency for picom

yay -Sy freedownloadmanager lens-bin zoom visual-studio-code-bin google-chrome firefox-nightly-bin sublime-text-4 dracula-gtk-theme tela-icon-theme ferdium-bin --noconfirm


## themes

#migrated from nordic to dracula
#cd /usr/share/themes/
#sudo git clone https://github.com/EliverLara/Nordic.git
#cd ~

cd ~
wget https://github.com/dracula/gtk/files/5214870/Dracula.zip
sudo unzip Dracula.zip -d /usr/share/icons





## fonts

# fonts for polybar
sudo pacman -Sy ttc-iosevka
yay -Sy nerd-fonts-source-code-pro otf-inconsolata-powerline-git --noconfirm

wget https://github.com/ryanoasis/nerd-fonts/releases/download/v1.1.0/FiraCode.zip
sudo unzip FiraCode.zip -d /usr/share/fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v1.1.0/Meslo.zip
sudo unzip Meslo.zip -d /usr/share/fonts

## removed these fonts in favor of those installed above
wget https://github.com/Prakashh21/Fonts/archive/refs/tags/v5.0.zip
sudo bsdtar --strip-components=1 -xvf v5.0.zip -C /usr/share/fonts/
fc-cache -vf


######################################################################################################

## nemo setup 


## adding vs code extension
wget https://raw.githubusercontent.com/mhsattarian/nemo-open-in-vscode/master/vscode.nemo_action -O ~/.local/share/nemo/actions/vscode.nemo_action

## setting default terminal as kitty for nemo

gsettings set org.cinnamon.desktop.default-applications.terminal exec alacritty

## if this doesn't work try this
## gsettings set org.gnome.desktop.default-applications.terminal exec kitty


######################################################################################################

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


## firefox -- https://github.com/mut-ex/minimal-functional-fox


rm -Rf ~/.bashrc ~/.Xresources ~/.bash_profile ~/.config/gtk-3.0 ~/.config/gtk-2.0 ~/.config/xfce4/ ~/.config/i3/ ~/.config/polybar ~/.config/picom ~/add-dots.sh ~/.config/kitty ~/.config/rofi ~/.zshrc ~/.zprofile ~/packages.txt ~/setup.sh ~/.Xnord ~/.config/nitrogen/ ~/.config/neofetch ~/.profile   

echo "dotfiles" >> .gitignore

git clone --bare https://github.com/Prakashh21/dotfiles-apollo.git $HOME/dotfiles

alias config='/usr/bin/git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'

config checkout 
config config status.showUntrackedFiles no

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




## enable vaapi in chrome based browsers

## Exec=/usr/bin/google-chrome-stable --enable-features=VaapiVideoDecoder --use-gl=desktop --disable-features=UseChromeOSDirectVideoDecoder %U
##  -- new windows ---> Exec=/usr/bin/google-chrome-stable --enable-features=VaapiVideoDecoder --use-gl=desktop --disable-features=UseChromeOSDirectVideoDecoder
##  -- incognito -----> Exec=/usr/bin/google-chrome-stable --enable-features=VaapiVideoDecoder --use-gl=desktop --disable-features=UseChromeOSDirectVideoDecoder --incognito


## enable --> WebGL Developer Extensions and WebGL Draft Extensions

## install zsh and oh-my-zsh

## sudo pacman -Sy zsh zsh-completions
## chsh -s /bin/zsh 
##sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
## yay -Sy  zsh-theme-powerlevel9k-git --noconfirm
## echo 'source /usr/share/zsh-theme-powerlevel9k/powerlevel9k.zsh-theme' >> ~/.zshrc

