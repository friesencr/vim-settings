sudo apt-get install build-essential openssl libreadline6 libreadline6-dev curl git-core zlib1g zlib1g-dev libssl-dev libyaml-dev libsqlite3-dev sqlite3 libxml2-dev libxslt-dev autoconf libc6-dev libgdbm-dev ncurses-dev automake libtool bison subversion pkg-config libffi-dev
sudo apt-get install ruby1.9.3-dev python2.7-dev python3-dev lua5.1-dev cscope exuberant-ctags mercurial ncurses-dev libssl-dev
hg clone https://vim.googlecode.com/hg/ vim
cd vim
hg pull
hg update
./configure --enable-rubyinterp  --enable-pythoninterp --enable-cscope  --enable-luainterp --enable-python3interp --with-features=huge --enable-multibyte --enable-xim --enable-gui=auto
make
sudo make install
cd ..
