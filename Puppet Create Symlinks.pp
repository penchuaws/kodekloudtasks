class symlinker {

  # preferred symlink syntax
  file { '/tmp/link-to-motd':
    ensure => 'link',
    target => '/etc/motd',
  }

  # older, less clear syntax
  file { '/tmp/link-to-motd':
    ensure => '/etc/motd',
  }

}