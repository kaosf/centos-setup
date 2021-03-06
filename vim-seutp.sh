sudo yum -y install lua-devel python-devel ruby ruby-devel ncurses-devel libacl-devel perl-ExtUtils-Embed

cd /usr/local/src
wget http://luajit.org/download/LuaJIT-2.0.4.tar.gz
tar xzf LuaJIT-2.0.4.tar.gz
rm LuaJIT-2.0.4.tar.gz
cd LuaJIT-2.0.4
make
sudo make install

if [ ! -d $HOME/.vim/dein ]; then
  curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh | bash -s $HOME/.vim/dein
fi
git clone git://github.com/kaosf/ka-vim-snippets.git $HOME/.vim/ka-vim-snippets
mkdir -p $HOME/local/src
cd $HOME/local/src
git clone https://github.com/vim/vim
cd vim
git checkout v7.4.838
./configure \
  --prefix=$HOME/local \
  --enable-perlinterp=yes \
  --enable-pythoninterp=yes \
  --enable-rubyinterp \
  --enable-luainterp=yes \
  --enable-multibyte \
  --enable-fail-if-missing \
  --with-features=huge \
  --with-luajit \
  --with-ruby-command=/usr/bin/ruby
make
make install

export LD_LIBRARY_PATH=/usr/local/lib/:$LD_LIBRARY_PATH
echo 'export LD_LIBRARY_PATH=/usr/local/lib/:$LD_LIBRARY_PATH' >> $HOME/.zshenv

# ref.
#   http://stackoverflow.com/questions/9583141/trying-to-build-nginx-with-luajit-support-but-libluajit-5-1-so-2-cannot-open-sh
