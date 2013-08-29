package { 'rubygems':
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
package { 'passenger':
  ensure   => installed,
  provider => 'gem',
  require  => Package['rubygems']
}

package { 'dm-postgres-adapter':
  ensure   => installed,
  provider => 'gem',
  require  => Package['rubygems']
}

package { 'datamapper':
  ensure   => installed,
  provider => 'gem',
  require  => Package['rubygems']
}
