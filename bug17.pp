file { 'sshdconfig':
  path => $operatingsystem ? {
  solaris123 => '/usr/local/etc/ssh/sshd_config',
  default => '/etc/ssh/sshd_config',
  }
}

file {'dd':
  path => $opes ? {
    sol =>'',
    default => '',
  }
}