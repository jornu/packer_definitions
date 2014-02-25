node default {
  class { 'nodejs':
    version => 'v0.10.21',
  }

  $npm_packages = ["express","grunt","grunt-cli","bower"]

  package { $npm_packages:
      ensure  => present,
      provider => 'npm',
  }
}
