  
  # Download Docker
  remote_file node['docker']['local'] do
    source node['docker']['url']
    mode '0755'
    action :create
  end

package 'docker-engine-1.7.0-1.el6.x86_64.rpm' do
  source node['docker']['local']
  action :install
end

  # Remove downloaded archive
  file node['packer']['local'] do
    action :delete
  end

  service 'docker' do
    supports :status => true, :restart => true, :reload => true
    action [ :enable, :start ]
  end