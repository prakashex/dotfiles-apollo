#! /bin/bash

# install picom build dependencies

sudo apt install libxext-dev libxcb1-dev libxcb-damage0-dev libxcb-xfixes0-dev libxcb-shape0-dev libxcb-render-util0-dev libxcb-render0-dev libxcb-randr0-dev libxcb-composite0-dev libxcb-image0-dev libxcb-present-dev libxcb-xinerama0-dev libxcb-glx0-dev libpixman-1-dev libdbus-1-dev libconfig-dev libgl1-mesa-dev libpcre2-dev libevdev-dev uthash-dev libev-dev libx11-xcb-dev

# install picom build tools

sudo apt-get install meson ninja-build


# Clone and Compile from source

mkdir -p ~/source
cd ~/source

git clone https://github.com/pijulius/picom.git
cd picom
git submodule update --init --recursive
meson --buildtype=release . build
ninja -C build

sudo ninja -C build install

rm -R ~/source
