sudo yum -y install ncurses-devel
git clone https://github.com/zsh-users/zsh
cd zsh
git checkout zsh-5.0.8
./Util/preconfig
./configure --prefix=/usr/local --enable-multibyte --with-tcsetpgrp
make clean
make
sudo make install; [ $? = 2 ]
cd -
sudo mv zsh /usr/local/src
echo '/usr/local/bin/zsh' | sudo tee -a /etc/shells

# ref.
#   http://tm.root-n.com/unix:zsh:install_5_0_2
#   http://dqn.sakusakutto.jp/2014/03/zshstderr_configure_error_no_c.html
#   http://www.linuxfromscratch.org/blfs/view/7.5/postlfs/zsh.html
#   http://www.zsh.org/mla/users/2003/msg00835.html
