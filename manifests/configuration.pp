class buildboard::configuration {
  class { 'passenger':
    passenger_version      => '4.0.14',
    gem_path               => '/var/lib/gems/1.9.1/gems',
    passenger_root         => '/var/lib/gems/1.9.1/gems/passenger-4.0.14/',
    mod_passenger_location => '/var/lib/gems/1.9.1/gems/passenger-4.0.14/buildout/apache2/mod_passenger.so',
  }

  apache::vhost {'metrics.delivery.puppetlabs.net':
    port       => '80',
    docroot    => '/usr/share/metrics/public',
    servername => 'metrics.delivery.puppetlabs.net',
  }
}
