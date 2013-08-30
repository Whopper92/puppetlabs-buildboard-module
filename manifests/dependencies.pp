class buildboard::dependencies {
  package { 'rubygems':
    ensure => installed
  }

  package { 'postgresql':
    ensure => installed
  }

  package { 'libpq-dev':
    ensure => installed
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
