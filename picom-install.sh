#! /bin/bash

mkdir -p ~/source
cd ~/source

git clone https://github.com/pijulius/picom.git
cd picom
git submodule update --init --recursive
meson --buildtype=release . build
ninja -C build

ninja -C build install
