# ref. https://github.com/ggreer/the_silver_searcher
git clone https://github.com/ggreer/the_silver_searcher
cd the_silver_searcher
sudo yum -y groupinstall "Development Tools"
sudo yum -y install pcre-devel xz-devel
./build.sh
sudo make install
