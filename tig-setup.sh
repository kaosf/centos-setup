git clone https://github.com/jonas/tig
cd tig
git checkout tig-2.1.1
./autogen.sh
./configure
make
sudo make install
git checkout master
cd -
sudo mv tig /usr/local/src
