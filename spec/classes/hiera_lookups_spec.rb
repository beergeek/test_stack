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
    it { should contain_class('test_stack::test0') }
    it { should contain_class('test_stack::test1') }

    it {
      should contain_file('/tmp/test').with(
        'ensure'  => 'file',
        'owner'   => 'root',
        'group'   => 'root',
        'mode'    => '0644',
      ).with_content(/std_lookup\n\na0\na1\na3\na4\n\nh0 = h0_value\nh2 = h2_value\nh1 = h1_value\n\ntest\n/)
    }
  end
end
