class buildboard::dependencies {
  package { 'buildboard':
    ensure => installed
  }

  package { 'apache2':
    ensure => installed
  }

  package { 'libapache2-mod-passenger':
    ensure => installed,
    require => Package['apache2']
  }

  package { 'postgresql':
    ensure => installed
  }

  package { 'libpq-dev':
    ensure => installed,
    require  => Package['postgresql']
  }

  package { 'sinatra':
    ensure   => installed,
    provider => 'gem',
  }

  package { 'sinatra-contrib':
    ensure   => installed,
    provider => 'gem',
  }

  package { 'datamapper':
    ensure   => installed,
    provider => 'gem',
  }

  package { 'dm-postgres-adapter':
    ensure   => installed,
    provider => 'gem',
    require  => Package['datamapper'],
  }
}
