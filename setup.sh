pacman -Syu

pacman -S ttf-font-awesome papirus-icon-theme noto-fonts-emoji noto-fonts ttf-fira-code glances rofi telegram-desktop kitty element-desktop obs-studio pycharm-community-edition flameshot deluge git picom nitrogen vim github-cli p7zip polybar nemo



## nemo setup 


## adding vs code extension
wget https://raw.githubusercontent.com/mhsattarian/nemo-open-in-vscode/master/vscode.nemo_action -O ~/.local/share/nemo/actions/vscode.nemo_action

## setting default terminal as xfce4-terminal for nemo
gsettings set org.cinnamon.desktop.default-applications.terminal exec xfce4-terminal


## themes

cd /usr/share/themes/
git clone https://github.com/EliverLara/Nordic.git

## fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v1.1.0/FiraCode.zip
unzip FiraCode.zip -d /usr/share/fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v1.1.0/Meslo.zip
unzip Meslo.zip -d /usr/share/fonts
wget https://github.com/Prakashh21/Fonts/archive/refs/tags/v1.0.zip
unzip v1.0.zip -d /usr/share/fonts
fc-cache -vf



# remianinig --> automation script for putting dotfiles back into place and setting up git bare repo again to track dotfiles from where left of and push to the dotfiles apollo, better solution would be to create a seperate script for the same.





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





