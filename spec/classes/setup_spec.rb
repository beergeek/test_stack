require 'spec_helper'
describe 'test_stack::setup' do
  let(:node) { 'test.puppetlabs.vm' }

  context 'with defaults for all parameters' do
    it {
      should contain_file('/etc/puppetlabs/puppet/hiera.yaml').with(
        'ensure'  => 'file',
        'owner'   => 'root',
        'group'   => 'root',
        'mode'    => '0644',
      )
    }
  end
end
