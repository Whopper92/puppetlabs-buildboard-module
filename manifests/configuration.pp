class buildboard::configuration {
  service { 'apache2':
    ensure  => 'running',
    enable  => 'true',
    require => Package['apache2'],
  }

  exec { 'a2enmod passenger':
    command => '/usr/sbin/a2enmod passenger',
    user    => 'root',
    require => Package['libapache2-mod-passenger']
  }

  file { 'vhost.conf':
    path    => '/etc/apache2/sites-enabled/25-metrics.delivery.puppetlabs.net.conf',
    owner   => 'root',
    group   => 'root',
    require => Exec['a2enmod passenger'],
    notify  => Service['apache2'],
    source  => 'puppet:///modules/buildboard/vhost.conf'
  }
}
