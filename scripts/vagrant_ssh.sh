#!/bin/bash
# Adding the vagrant public key for passwordless ssh

mkdir /home/vagrant/.ssh
chmod 0700 /home/vagrant/.ssh
wget https://raw.github.com/mitchellh/vagrant/master/keys/vagrant.pub -o /home/vagrant/.ssh/authorized_keys
chmod 0600 /home/vagrant/.ssh/authorized_keys
