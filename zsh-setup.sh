sudo yum -y install ncurses-devel
git clone https://github.com/zsh-users/zsh
cd zsh
git checkout zsh-5.0.8
./Util/preconfig
./configure --prefix=/usr/local --enable-multibyte
make clean
make
sudo make install; [ $? = 2 ]
cd -
sudo mv zsh /usr/local/src
echo '/usr/local/bin/zsh' | sudo tee -a /etc/shells
