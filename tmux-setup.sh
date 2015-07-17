sudo yum remove -y libevent libevent-devel libevent-headers
mkdir -p ~/local/src
cd ~/local/src
wget https://github.com/downloads/libevent/libevent/libevent-2.0.21-stable.tar.gz
tar xf libevent-2.0.21-stable.tar.gz
cd libevent-2.0.21-stable
./configure
make
sudo make install
sudo ln -s /usr/local/lib/libevent-2.0.so.5 /usr/lib64/libevent-2.0.so.5

mkdir ~/local/src
cd ~/local/src
wget http://downloads.sourceforge.net/tmux/tmux-2.0.tar.gz
tar xzf tmux-2.0.tar.gz
cd tmux-2.0
./configure --prefix=$HOME/local
make
make install

# ref. https://jtskarbek.wordpress.com/2013/03/22/tmux-compile-failure/
