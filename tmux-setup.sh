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

wget https://github.com/tmux/tmux/releases/download/2.0/tmux-2.0.tar.gz
tar xf tmux-2.0.tar.gz
cd tmux-2.0
./configure
make
sudo make install
cd -
sudo mv tmux-2.0 /usr/local/src
rm tmux-2.0.tar.gz

# ref. https://jtskarbek.wordpress.com/2013/03/22/tmux-compile-failure/
