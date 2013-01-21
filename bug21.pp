define basket($arg) {
file{'foo':
  ensure  => present,
  content => "$arg",
}
}
realize( Basket[fruit], Basket[berry] )