#!/bin/sh
apt-get -y update
apt-get -y upgrade
apt-get clean

# Needed to avoid "ERROR: The certificate of `apt.puppetlabs.com' is not trusted." later
apt-get -y install ca-certificates

# Tweak sshd to prevent DNS resolution (speed up logins)
echo 'UseDNS no' >> /etc/ssh/sshd_config
