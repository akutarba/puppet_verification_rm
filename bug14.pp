@@nagios_service { "check_zfs${hostname}":
  use                 => 'generic-service',
  host_name           => "$fqdn",
  check_command       => 'check_nrpe_1arg!check_zfs',
  service_description => "check_zfs${hostname}",
  target              => '/etc/nagios3/conf.d/nagios_service.cfg',
  notify              => Service[$nagios::params::nagios_service],
}