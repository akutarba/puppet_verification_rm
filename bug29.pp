if $server == 'mongrel' {
  include mongrel
} else {
  include nginx
}