class freebsd inherits unix {
  File['/etc/passwd'] { group => 'wheel' }
  File['/etc/shadow'] { group => 'wheel' }
}