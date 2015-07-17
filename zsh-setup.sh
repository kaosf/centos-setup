mkdir -p ~/local/src
cd ~/local/src
git clone git://git.code.sf.net/p/zsh/code zsh
cd zsh
git checkout zsh-5.0.8
./Util/preconfig
./configure --prefix=$HOME/local --enable-multibyte
make clean
make
sudo make install
echo '/usr/local/bin/zsh' | sudo tee -a /etc/shells
chsh -s /usr/local/bin/zsh
