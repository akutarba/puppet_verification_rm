class  {
  'apt-keys': stage => first;
  'sendmail': stage => main;
  'apache': stage => last;
}
stage { 'first': before => Stage['main'] }
stage { 'last': require => Stage['main'] }

define svn_repo($path) {
exec { "create_repo_${name}":
  command => "/usr/bin/svnadmin create ${path}/${title}",
  unless  => "/bin/test -d ${path}",
}
if $require {
Exec["create_repo_${name}"] {
require +> $require,
}
}
}

svn_repo { 'puppet':
  path    => '/var/svn',
  require => Package['subversion'],
}