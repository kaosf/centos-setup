# Install go at first (ref. go-setup.sh)
if ! type go; then
  echo "Golang isn't installed." >&2
  exit 1
fi
go get github.com/peco/peco/cmd/peco
