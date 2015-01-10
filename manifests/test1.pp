class test_stack::test1 {

  file { '/tmp/test1':
    ensure => file,
    owner  => 'root',
    group  => 'root',
    mode   => '0644',
  }

}
