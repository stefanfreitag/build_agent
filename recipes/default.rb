#
# Cookbook:: build_agent
# Recipe:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

include_recipe 'build_agent::packer'
include_recipe 'build_agent::docker'
