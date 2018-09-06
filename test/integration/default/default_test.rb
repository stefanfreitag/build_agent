# # encoding: utf-8

describe file('/usr/local/bin/packer') do
  it { should exist }
  its('group') { should eq 'root' }
  its('owner') { should eq 'root' }
end

describe package('docker-engine') do
  it { should be_installed }
end

describe service('docker') do
  it { should be_installed }
  it { should be_enabled }
  it { should be_running }
end
