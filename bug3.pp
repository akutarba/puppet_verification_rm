file { '/my/file':
  content => template('mytemplate.erb')
}