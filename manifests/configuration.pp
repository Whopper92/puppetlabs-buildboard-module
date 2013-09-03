class buildboard::configuration {
  include apache::mod::passenger

  apache::vhost {'metrics.delivery.puppetlabs.net':
    port       => '80',
    docroot    => '/usr/share/metrics/public',
    servername => 'metrics.delivery.puppetlabs.net',
  }
}
