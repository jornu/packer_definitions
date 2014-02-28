node default {

  class { 'nginx': }

  file { "/etc/nginx/ssl":
      ensure => "directory",
  }

  # Use CWC wildcard
  file { "/etc/nginx/ssl/centralwaycom":
      source => "puppet:///files/certs/cwc-wc",
      recurse => true,
      purge => true,
      require => File['/etc/nginx/ssl'],
  }

  class { 'nodejs':
    version => 'v0.10.21',
  }

  $npm_packages = ["express","grunt","grunt-cli","bower"]

  package { $npm_packages:
      ensure  => present,
      provider => 'npm',
  }
}
