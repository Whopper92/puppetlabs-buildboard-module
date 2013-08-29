class buildboard {
  include apache
  include passenger
  include buildboard::dependencies

  apache::vhost {'metrics.delivery.puppetlabs.net':
    port       => '80',
    docroot    => '/usr/share/metrics/public',
    servername => 'metrics.delivery.puppetlabs.net',
  }
}
