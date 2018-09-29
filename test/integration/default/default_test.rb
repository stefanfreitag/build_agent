##
# Basic
##

describe package('dos2unix') do
  it { should be_installed }
end

describe package('screen') do
  it { should be_installed }
end

describe package('unzip') do
  it { should be_installed }
end

##
# Packer
##

describe file('/usr/local/bin/packer') do
  it { should exist }
  its('group') { should eq 'root' }
  its('owner') { should eq 'root' }
end

##
# Docker
##

describe package('docker-engine') do
  it { should be_installed }
end

describe service('docker') do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
end
