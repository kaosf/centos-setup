sudo firewall-cmd --permanent --add-service=ssh
sudo firewall-cmd --permanent --add-port=60000-60010/udp # mosh
sudo firewall-cmd --permanent --add-service=http
sudo firewall-cmd --permanent --add-service=https
sudo firewall-cmd --permanent --add-service=smtp
sudo firewall-cmd --permanent --add-port=5432/tcp
sudo firewall-cmd --reload
