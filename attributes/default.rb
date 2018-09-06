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
