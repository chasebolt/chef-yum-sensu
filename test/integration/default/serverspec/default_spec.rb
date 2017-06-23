require 'spec_helper'

describe 'yum sensu repo' do
  describe yumrepo('sensu') do
    it { should exist }
    it { should be_enabled }
  end

  describe file('/etc/yum.repos.d/sensu.repo') do
    it { should contain 'https://sensu.global.ssl.fastly.net/yum/$releasever/$basearch/' }
  end
end
