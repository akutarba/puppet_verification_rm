class apache::debian inherits apache::base {
  debug("Configuring apache for Debian")
  #TODO: refactor all debian specifics from ::base here
  Package["apache"] { name => apache2 }
  Service["apache"] {
    name => "apache2",
    pattern => "/usr/sbin/apache2",
    hasrestart => true,
}
}