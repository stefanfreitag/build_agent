#
# Cookbook:: build_agent
# Recipe:: default
#

##########
# Packer #
##########

# Version to download and install
default['build_agent']['packer']['version'] = '1.2.5'

# Download URL
default['build_agent']['packer']['base_url'] = 'https://releases.hashicorp.com/packer/'

# Temporary directory for storing the download
default['build_agent']['packer']['tmp'] = '/tmp/'

##########
# Docker #
##########

# Download URL
default['build_agent']['docker']['base_url'] = 'https://get.docker.com/rpm/1.7.0/centos-6/RPMS/x86_64/'

# Name of file to download
default['build_agent']['docker']['filename'] = 'docker-engine-1.7.0-1.el6.x86_64.rpm'

# Temporary directory for storing the download
default['build_agent']['docker']['tmp'] = '/tmp/'
