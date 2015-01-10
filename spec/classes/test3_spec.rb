require 'spec_helper'
describe 'test_stack::test3' do
  let(:node) { 'test.puppetlabs.vm' }

  context 'with defaults for all parameters' do
    it {
      should contain_file('/tmp/test3').with(
        'ensure'  => 'file',
        'owner'   => 'root',
        'group'   => 'root',
        'mode'    => '0644',
      )
    }
  end
end
