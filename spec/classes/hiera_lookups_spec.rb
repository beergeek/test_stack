require 'spec_helper'
describe 'test_stack::hiera_lookups' do
  let(:node) { 'test.puppetlabs.vm' }

  context 'with defaults for all parameters' do
    let(:facts) {
      {
        'clientcert'  => 'test.puppetlabs.vm',
      }
    }
    it { should contain_class('test_stack::hiera_lookups') }

    it {
      should contain_file('/tmp/test').with(
        'ensure'  => 'file',
        'owner'   => 'root',
        'group'   => 'root',
        'mode'    => '0644',
      )
    }
  end
end
