define vhost {
  include apache # contains Package['httpd'] and Service['httpd']
}