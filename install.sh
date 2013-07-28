#!/bin/sh
hg clone https://vim.googlecode.com/hg/ vim
cd vim
hg pull
hg update
./configure \
  --with-features=huge \
  --with-x \
  --enable-rubyinterp \
  --enable-gtk2-check \
  --enable-gnome-check \
  --enable-pythoninterp \
  --enable-luainterp \
  --enable-python3interp \
  --enable-pythoninterp \
  --enable-multibyte \
  --enable-xim \
  --enable-gui=auto

make
sudo make install
cd ..
