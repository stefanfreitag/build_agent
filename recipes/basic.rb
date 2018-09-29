#
# Cookbook:: build_agent
# Recipe:: basic
#
# Copyright:: 2018, Stefan Freitag, Apache-2.0

%w[dos2unix screen unzip].each do |p|
  package p do
    action :install
  end
end
