#
# Cookbook:: build_agent
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.


# Packer version to install
default['packer']['version'] = '1.2.5'

# Download URL for Grafana
default['packer']['url'] = "https://releases.hashicorp.com/packer/#{node['packer']['version']}/packer_#{node['packer']['version']}_linux_amd64.zip"

# Name of the stored archive on local system
default['packer']['local'] = "/tmp/packer_#{node['packer']['version']}_linux_amd64.zip"

default['docker']['url'] = 'https://get.docker.com/rpm/1.7.0/centos-6/RPMS/x86_64/docker-engine-1.7.0-1.el6.x86_64.rpm'

# Name of the stored archive on local system
default['docker']['local'] = '/tmp/docker-engine-1.7.0-1.el6.x86_64.rpm'
