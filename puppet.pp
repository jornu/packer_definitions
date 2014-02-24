node default {
  include nodejs

  $npm_packages = ["express","grunt","grunt-cli","bower"]

  package { $npm_packages:
      ensure  => present,
      provider => 'npm',
      require => Class['nodejs'],
  }
}
