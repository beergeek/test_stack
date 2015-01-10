require 'spec_helper'
describe 'test_stack::hiera_lookups' do

  context 'with defaults for all parameters' do
    let(:hiera_data) {
      {
        'test_stack::hiera_lookups::std_lookup'     => 'std_lookup',
        'test_stack::hiera_lookups::array_lookup'   => ['a0','a1','a2'],
        'test_stack::hiera_lookups::hash_lookup'    => {'h0' => 'h1','h3' => 'h4'},
        'test_stack::hiera_lookups::include_lookup' => ['test_stack::test_0','test_stack::test_1']
      }
    }
    it { should contain_class('test_stack') }

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
