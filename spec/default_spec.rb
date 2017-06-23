require 'spec_helper'

describe 'yum-sensu::default' do
  context 'yum-sensu::default uses default attributes' do
    let(:chef_run) { ChefSpec::SoloRunner.new.converge(described_recipe) }

    it 'creates yum_repository[sensu]' do
      expect(chef_run).to create_yum_repository('sensu')
    end
  end
end
