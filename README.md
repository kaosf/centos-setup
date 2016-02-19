# CentOS setup scripts

## Usage

```sh
curl https://raw.githubusercontent.com/kaosf/centos-setup/master/setup.sh | bash
curl https://raw.githubusercontent.com/kaosf/centos-setup/master/git-setup.sh | bash
curl https://raw.githubusercontent.com/kaosf/centos-setup/master/tmux-setup.sh | bash
curl https://raw.githubusercontent.com/kaosf/centos-setup/master/zsh-setup.sh | bash
curl https://raw.githubusercontent.com/kaosf/centos-setup/master/tig-setup.sh | bash
curl https://raw.githubusercontent.com/kaosf/centos-setup/master/ag-setup.sh | bash
```

Run the following command as a root user, then a user which has the name of
`$USERNAME` is created. This user can run sudo command without a password!
And the user inherit `/root/.ssh/authorized_keys` so you can do SSH login with
your same credential for the root user's SSH login.
But this command also disable the root user's SSH login and restart sshd.

```sh
curl https://raw.githubusercontent.com/kaosf/centos-setup/master/unsecure-root-setup.sh | bash -s $USERNAME
```

For myself.

```sh
curl https://raw.githubusercontent.com/kaosf/centos-setup/master/unsecure-root-setup.sh | bash -s ka
```

## Versions

* CentOS 6.7
* CentOS 7

## License

[Public Domain (Unlicense)](http://choosealicense.com/licenses/public-domain/)
