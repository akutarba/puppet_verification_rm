class apache {
service {'apache':
  require => Package['httpd'],
}
}

class apache::ssl inherits apache {
# host certificate is required for SSL to function
Service['apache'] {
require +> [ File['apache.pem'], File['httpd.conf'] ],
# Since `require` will retain its previous values, this is equivalent to:
# require => [ Package['httpd'], File['apache.pem'], File['httpd.conf'] ],
}
}