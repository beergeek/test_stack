class test_stack::hiera_lookups {

  # test with no defaults
  $std_lookup = hiera('test_stack::hiera_lookups::std_lookup')
  $array_lookup = hiera_array('test_stack::hiera_lookups::array_lookup')
  $hash_lookup = hiera_hash('test_stack::hiera_lookups::hash_lookup')
  $include_lookup = hiera_include('test_stack::hiera_lookups::include_lookup')
  $std_lookup_default = hiera('test_stack::hiera_lookups::std_lookup_default','test')

  file { '/tmp/test':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
  }
}
