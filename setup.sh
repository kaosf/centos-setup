GROUPNAME=
USERNAME=
yum -y update
groupadd $GROUPNAME
useradd $USERNAME -g $GROUPNAME

su - $USERNAME
ssh-keygen
echo 'ssh-rsa AAAAB3... ' > .ssh/autholized_keys
chmod 600 .ssh/autholized_keys
exit

visudo
# + username ALL=(ALL) ALL
# or
# + username ALL=(ALL) NOPASSWD: ALL

vi /etc/ssh/sshd_config
# - #PermitRootLogin yes
# + PermitRootLogin no
#   ...
# - #passwordAuthentication yes
# + passwordAuthentication no
#   ...
/etc/init.d/sshd restart
exit
#### root operations end

sudo yum -y install wget make gcc-c++
