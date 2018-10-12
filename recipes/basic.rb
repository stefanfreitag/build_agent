#
# Cookbook:: build_agent
# Recipe:: basic
#
# Copyright:: 2018, Stefan Freitag, Apache-2.0

package 'epel-release' do
  action :install
end

%w[dos2unix nodejs npm screen unzip].each do |p|
  package p do
    action :install
  end
end
