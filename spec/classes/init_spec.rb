require 'spec_helper'
describe 'test_stack' do

  context 'with defaults for all parameters' do
    it { should contain_class('test_stack') }
  end
end
