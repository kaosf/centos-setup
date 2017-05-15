if [ $# -lt 1 ]; then exit 1; fi
NAME=$1
groupadd $NAME
useradd $NAME -g $NAME -s /bin/bash -d /home/$NAME
yum -y install sudo
echo "${NAME} ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
mkdir /home/${NAME}/.ssh
cp .ssh/authorized_keys /home/${NAME}/.ssh/
chown ${NAME}:${NAME} -R /home/${NAME}/.ssh
chmod 600 /home/${NAME}/.ssh/authorized_keys
sed 's/#\?PermitRootLogin .*/PermitRootLogin no/' -i /etc/ssh/sshd_config
if grep 'release 7' /etc/redhat-release; then
  systemctl restart sshd.service
else
  service sshd restart
fi
