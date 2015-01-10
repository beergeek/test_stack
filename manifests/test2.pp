class test_stack::test2 {

  file { '/tmp/test2':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
  }

}
