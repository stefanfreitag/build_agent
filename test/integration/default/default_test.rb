# # encoding: utf-8

describe file('/usr/local/bin/packer') do
  it { should exist }
  its('group') { should eq 'root' }
  its('owner') { should eq 'root' }
end
