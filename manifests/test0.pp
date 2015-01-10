class test_stack::test0 {

  file { '/tmp/test0':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
  }

}
