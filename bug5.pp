package {
  "apache":
      before => Concat["/etc/apache2/ports.conf"];
}