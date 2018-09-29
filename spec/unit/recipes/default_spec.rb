#
# Cookbook:: build_agent
# Spec:: default
#
# Copyright:: 2018, The Authors, All Rights Reserved.

require 'spec_helper'

describe 'build_agent::default' do

  context 'When all attributes are default, on CentOS 6.9' do
    let(:chef_run) do
      runner = ChefSpec::ServerRunner.new(platform: 'centos', version: '6.9')
      runner.converge(described_recipe)
    end

    it 'Installs basic packages' do
      expect(chef_run).to install_package('dos2unix')
      expect(chef_run).to install_package('screen')
      expect(chef_run).to install_package('unzip')
    end

    it 'converges successfully' do
      expect { chef_run }.to_not raise_error
    end
  end
end
