class buildboard::dependencies {
  package { 'buildboard':
    ensure => installed
  }

  package { 'rubygems':
    ensure => installed
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
    require  => Package['rubygems']
  }

  package { 'sinatra-contrib':
    ensure   => installed,
    provider => 'gem',
    require  => Package['rubygems']
  }

  package { 'datamapper':
    ensure   => installed,
    provider => 'gem',
    require  => Package['rubygems'],
  }

  package { 'dm-postgres-adapter':
    ensure   => installed,
    provider => 'gem',
    require  => Package['rubygems', 'datamapper'],
  }
}
