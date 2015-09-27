if [ ! -d /usr/local/src/LuaJIT-2.0.4 ]; then
  sudo curl http://luajit.org/download/LuaJIT-2.0.4.tar.gz -O
  sudo tar xf LuaJIT-2.0.4.tar.gz -C /usr/local/src/
  rm LuaJIT-2.0.4.tar.gz
  cd /usr/local/src/LuaJIT-2.0.4
  sudo make
  sudo make install
  cd -
fi
if ! cat /etc/environment | grep LD_LIBRARY_PATH; then
  echo 'LD_LIBRARY_PATH=/usr/local/lib' | sudo tee -a /etc/environment
  export LD_LIBRARY_PATH=/usr/local/lib:$LD_LIBRARY_PATH
fi
