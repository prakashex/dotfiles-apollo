pacman -Syu

pacman -S ttf-font-awesome papirus-icon-theme noto-fonts-emoji noto-fonts ttf-fira-code glances rofi telegram-desktop kitty element-desktop obs-studio pycharm-community-edition flameshot deluge git picom nitrogen vim github-cli p7zip polybar nemo

git clone 


## extracting fonts
7z x .fonts.7z

mv -R .fonts/* /usr/share/fonts/


## nemo setup 


## adding vs code extension
wget https://raw.githubusercontent.com/mhsattarian/nemo-open-in-vscode/master/vscode.nemo_action -O ~/.local/share/nemo/actions/vscode.nemo_action

## setting default terminal as xfce4-terminal for nemo
gsettings set org.cinnamon.desktop.default-applications.terminal exec xfce4-terminal


