sudo apt-get install ruby1.9.1 python3 lua5.1 cscope exuberant-ctags mercurial ncurses-dev libssl-dev
hg clone https://vim.googlecode.com/hg/ vim
cd vim
hg pull
hg update
./configure --enable-rubyinterp  --enable-pythoninterp --enable-cscope  --enable-luainterp --enable-python3interp --with-features=huge --enable-multibyte --enable-xim --enable-gui=auto
make
sudo make install
sudo rm /usr/bin/vi
sudo ln -s /usr/bin/vim /usr/bin/vi
cd ..
rm -rf vim
