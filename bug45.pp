class apache-ssl-ssl {
service { 'apache': require => Package['httpd'] }
}