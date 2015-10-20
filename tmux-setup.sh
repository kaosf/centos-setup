sudo yum remove -y libevent libevent-devel libevent-headers
wget https://github.com/downloads/libevent/libevent/libevent-2.0.21-stable.tar.gz
tar xf libevent-2.0.21-stable.tar.gz
cd libevent-2.0.21-stable
./configure
make
sudo make install
sudo ln -s /usr/local/lib/libevent-2.0.so.5 /usr/lib64/libevent-2.0.so.5
cd -
sudo mv libevent-2.0.21-stable /usr/local/src
rm libevent-2.0.21-stable.tar.gz

VERSION=2.1
wget https://github.com/tmux/tmux/releases/download/${VERSION}/tmux-${VERSION}.tar.gz
tar xf tmux-${VERSION}.tar.gz
cd tmux-${VERSION}
./configure
make
sudo make install
cd -
sudo mv tmux-${VERSION} /usr/local/src
rm tmux-${VERSION}.tar.gz

# ref. https://jtskarbek.wordpress.com/2013/03/22/tmux-compile-failure/
