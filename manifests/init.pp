# == Class: stunnel
#
# STunnel Management
#
class stunnel {
  file { '/usr/local/bin/stunnel-combine-certs':
    ensure => 'present',
    owner  => 'root',
    group  => 'root',
    mode   => '0555',
    source => 'puppet:///modules/stunnel/stunnel-combine-certs.rb',
  }

  class { 'stunnel::install': } ->
    class { 'stunnel::config': }
}
