#!/bin/sh
hg clone https://vim.googlecode.com/hg/ vim
cd vim
hg pull
hg update
./configure --enable-rubyinterp  --enable-pythoninterp --enable-cscope  --enable-luainterp --enable-python3interp --with-features=huge --enable-multibyte --enable-xim --enable-gui=auto
make
sudo make install
cd ..
