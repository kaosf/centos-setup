sudo yum -y install \
  curl-devel expat-devel gettext-devel openssl-devel zlib-devel gcc perl-ExtUtils
curl -O https://www.kernel.org/pub/software/scm/git/git-2.3.7.tar.gz
tar xf git-2.3.7.tar.gz
cd git-2.3.7
make prefix=/usr/local all
sudo make prefix=/usr/local install
cd -
sudo mv git-2.3.7 /usr/local/src
rm git-2.3.7.tar.gz

# ref. http://blog.clock-up.jp/entry/2015/05/01/centos-git-build
