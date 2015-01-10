require 'spec_helper'
describe 'test_stack::test2' do
  let(:node) { 'test.puppetlabs.vm' }

  context 'with defaults for all parameters' do
    it {
      should contain_file('/tmp/test2').with(
        'ensure'  => 'file',
        'owner'   => 'root',
        'group'   => 'root',
        'mode'    => '0644',
      )
    }
  end
end
