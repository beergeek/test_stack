class test_stack::r10k {

  class { '::r10k':
    version     => '1.4.0',
    sources     => {
      puppet    => {
        remote  => 'https://github.com/puppetlabs/prosvcs-test_puppet',
        basedir => '/etc/puppetlabs/puppet/environments',
        prefix  => false,
      },
      hiera => {
        remote  => 'https://github.com/puppetlabs/prosvcs-test_hiera',
        basedir => '/etc/puppetlabs/puppet/hieradata',
        prefix  => false,
      },
    },
    manage_modulepath => false,
    purgedirs         => ['/etc/puppetlabs/puppet/environments','/etc/puppetlabs/puppet/hieradata'],
    notify            => Exec['refresh_r10k'],
  }

  exec { 'refresh_r10k':
    command     => '/opt/puppet/bin/r10k deploy environment -p',
    refreshonly => true,
  }
}
