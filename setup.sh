# ref. http://www.public-t.info/note/sakura_vps-initialization/

vim /etc/sysctl.conf
#### diff
#  kernel.shmall = 4294967296
#  
# -
# +kernel.panic = 5
#  
#  # Do not accept RA

/sbin/sysctl -p
/sbin/sysctl -n 'kernel.panic'
#=> 5

mkdir -p /etc/skel/Maildir/{new,cur,tmp}
chmod -R 700 /etc/skel/Maildir

useradd <username>
passwd <username>
usermod -G wheel <username>

visudo
#### diff
#  ## Allows people in group wheel to run all commands
# -# %wheel  ALL=(ALL)       ALL
# +# %wheel  ALL=(ALL)       ALL
#  

#### diff
#  
# +
# +# syslog facility
# +Defaults syslog=local3
#  [EOF]

vim /etc/rsyslog.conf
#### diff
#  # Save boot messages also to boot.log
#  local7.*                                                /var/log/boot.log
#  
# +# sudo log
# +local3.*                                                /var/log/sudo
#  
#  
#  # ### begin forwarding rule ###
#  #

touch /var/log/sudo
chmod 600 /var/log/sudo

vim /etc/logrotate.d/syslog
#### diff
#  /var/log/secure
#  /var/log/spooler
# +/var/log/sudo
#  {
#        sharedscripts

reboot

## login as <username>

sudo vim /etc/ssh/sshd_config
# -# PermitRootLogin yes
# +PermitRootLogin no
sudo service sshd restart

sudo yum install -y zsh tmux git tig
