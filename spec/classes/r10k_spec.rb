require 'spec_helper'
describe 'test_stack::r10k' do
  let(:node) { 'test.puppetlabs.vm' }
  let(:facts) {
    {
      'osfamily' => 'RedHat'
    }
  }

  context 'with defaults for all parameters' do
    it {
      should contain_class('r10k').with(
        'version'   => '1.4.1',
        'sources'   => {
          'puppet'  =>  {
            'remote'  => 'https://github.com/puppetlabs/prosvcs-test_puppet',
            'basedir' => '/etc/puppetlabs/puppet/environments',
            'prefix'  => false,
          },
          'hiera'   => {
            'remote'  => 'https://github.com/puppetlabs/prosvcs-test_hiera',
            'basedir' => '/etc/puppetlabs/puppet/hieradata',
            'prefix'  => false,
          },
        },
        'manage_modulepath' => false,
        'purgedirs'         => ['/etc/puppetlabs/puppet/environments','/etc/puppetlabs/puppet/hieradata'],
      ).that_notifies('Service[refresh_r10k]')
    }

    it {
      should contain_exec('refresh_r10k').with(
        'command'     => '/opt/puppet/bin/r10k deploy environment -p',
        'refreshonly' => true,
      )
    }
  end
end
