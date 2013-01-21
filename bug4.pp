class base::linux {
  file {'/etc/passwd':
    ensure => file,
  }
}

include base::linux

File <| tag == 'base::linux' |> {
  owner => 'root',
  group => 'root',
  mode  => 0640,
}

class freebsd inherits unix {
  File['/etc/passwd', '/etc/shadow', '/etc/shadow', '/etc/shadow'] {
    group => 'wheel'
  }
}

file { ['/etc',
'/etc/rc.d',
'/etc/rc.d/init.d',
'/etc/rc.d/rc0.d',
'/etc/rc.d/rc1.d',
'/etc/rc.d/rc2.d',
'/etc/rc.d/rc3.d',
'/etc/rc.d/rc4.d',
'/etc/rc.d/rc5.d',
'/etc/rc.d/rc6.d']:
  ensure => directory,
  owner  => 'root',
  group  => 'root',
  mode   => 0755,
}

file {'/etc/passwd':
  ensure => file,
}

File['/etc/passwd'] {
  owner => 'root',
  group => 'root',
  mode  => 0640,
}