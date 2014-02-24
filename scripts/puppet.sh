# Install Puppet from the Puppetlab repository

# First add the Puppetlab repository to the sources through their package
wget https://apt.puppetlabs.com/puppetlabs-release-wheezy.deb
sudo dpkg -i puppetlabs-release-wheezy.deb
sudo apt-get -y update

# Then install Pupper itself (standalone mode)
sudo apt-get -y install puppet-common
