# ref. https://github.com/ggreer/the_silver_searcher
sudo yum -y groupinstall "Development Tools"
sudo yum -y install pcre-devel xz-devel
./build
sudo make install
