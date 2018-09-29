#
# Cookbook:: build_agent
# Recipe:: docker
#
# Copyright:: 2018, Stefan Freitag, Apache-2.0

docker_url = node['build_agent']['docker']['base_url'] + node['build_agent']['docker']['filename']
docker_local_tmpfile = node['build_agent']['docker']['tmp'] + node['build_agent']['docker']['filename']

log 'Downloading Docker from ' + docker_url do
  level :info
end

remote_file docker_local_tmpfile do
  source docker_url
  mode '0755'
  action :create
end

package 'docker-engine-1.7.0-1.el6.x86_64.rpm' do
  source docker_local_tmpfile
  action :install
end

# Remove downloaded archive
file docker_local_tmpfile do
  action :delete
end

service 'docker' do
  supports status: true, restart: true, reload: true
  action [ :enable, :start ]
end
