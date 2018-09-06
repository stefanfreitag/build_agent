package 'unzip' do
  action :install
end

# Download Packer
remote_file node['packer']['local'] do
  source node['packer']['url']
  mode '0755'
  action :create
end

# Extract Packer
execute 'Extract Packer' do
  command "unzip -o #{node['packer']['local']} -d /usr/local/bin"
end

# Remove downloaded archive
file node['packer']['local'] do
  action :delete
end
