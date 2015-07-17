VERSION=1.4.2
wget http://golang.org/dl/go${VERSION}.linux-amd64.tar.gz
tar xzf go${VERSION}.linux-amd64.tar.gz
mv go $HOME/.go
echo 'export GOROOT=$HOME/.go' >> $HOME/.zshenv
echo 'export PATH=$PATH:$GOROOT/bin' >> $HOME/.zshenv
echo 'export GOPATH=$HOME/.gocode' >> $HOME/.zshenv
echo 'export PATH=$HOME/.gocode/bin:$PATH' >> $HOME/.zshenv
source $HOME/.zshenv
rm -f go${VERSION}.linux-amd64.tar.gz

go get github.com/peco/peco/cmd/peco
