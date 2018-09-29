#
# Cookbook:: build_agent
# Recipe:: packer
#
# Copyright:: 2018, Stefan Freitag, Apache-2.0

packer_base_url = node['build_agent']['packer']['base_url']
packer_version = node['build_agent']['packer']['version']
packer_local_tmpfile = node['build_agent']['packer']['tmp'] + 'packer_' + packer_version + '_linux_amd64.zip'

package 'unzip' do
  action :install
end

log 'Downloading Packer from ' + packer_base_url do
  level :info
end

remote_file packer_local_tmpfile do
  source packer_base_url + packer_version + '/packer_' + packer_version + '_linux_amd64.zip'
  mode '0755'
  action :create
end

log 'Downloading packer from ' + packer_base_url do
  level :info
end

# Extract Packer
execute 'Extracting Packer' do
  command 'unzip -o ' + packer_local_tmpfile + ' -d /usr/local/bin'
end

# Remove downloaded archive
file packer_local_tmpfile do
  action :delete
end
