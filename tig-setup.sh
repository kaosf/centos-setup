mkdir -p $HOME/local/src
cd $HOME/local/src
git clone https://github.com/jonas/tig
cd tig
git checkout tig-2.1.1
./autogen.sh
./configure --prefix=$HOME/local
make
make install
git checkout master
