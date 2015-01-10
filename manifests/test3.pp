class test_stack::test3 {

  file { '/tmp/test3':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
  }

}
