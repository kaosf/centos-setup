sudo yum -y install curl-devel expat-devel gettext-devel openssl-devel zlib-devel gcc perl-ExtUtils
mkdir -p ~/local/src
cd ~/local/src
wget https://www.kernel.org/pub/software/scm/git/git-2.3.7.tar.gz
tar xzvf git-2.3.7.tar.gz
cd git-2.3.7
make prefix=$HOME/local all
make prefix=$HOME/local install

# ref. http://blog.clock-up.jp/entry/2015/05/01/centos-git-build
