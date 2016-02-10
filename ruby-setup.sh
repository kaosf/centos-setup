sudo yum -y update
sudo yum -y groupinstall "Development Tools"
sudo yum -y install openssl-devel zlib-devel readline-devel
git clone https://github.com/sstephenson/rbenv.git $HOME/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> $HOME/.zshenv
echo 'eval "$(rbenv init -)"' >> $HOME/.zshenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> $HOME/.bash_profile
echo 'eval "$(rbenv init -)"' >> $HOME/.bash_profile
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
mkdir -p $HOME/.rbenv/plugins
git clone https://github.com/sstephenson/ruby-build.git $HOME/.rbenv/plugins/ruby-build
git clone https://github.com/ianheggie/rbenv-binstubs.git $HOME/.rbenv/plugins/rbenv-binstubs
rbenv install 2.3.0
rbenv global 2.3.0
gem install bundler --no-ri --no-rdoc
rbenv rehash

# For nokogiri
#sudo yum -y install libxml2-devel libxslt-devel

# For sqlite3
#sudo yum -y install libsqlite3x-devel

# For pg
#sudo yum -y install postgresql-devel

# ref.
#   http://lab.unicast.ne.jp/2013/04/30/rbenv%E3%81%AE%E3%82%A4%E3%83%B3%E3%82%B9%E3%83%88%E3%83%BC%E3%83%AB%E3%80%81rails%E3%83%97%E3%83%AD%E3%82%B8%E3%82%A7%E3%82%AF%E3%83%88%E3%81%AE%E4%BD%9C%E6%88%90%E3%81%BE%E3%81%A7/
#   https://github.com/kaosf/ubuntu-setup/blob/511497937339a0d62c86a85d1ed016314398be4d/ruby-setup.sh
