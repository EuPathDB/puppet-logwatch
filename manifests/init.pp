class logwatch {

  package { 'logwatch':
    ensure => installed;
  }

  file { '/etc/logwatch/conf/logwatch.conf':
    owner   => root,
    group   => root,
    mode    => '0644',
    source  => 'puppet:///modules/logwatch/logwatch.conf',
    require => Package['logwatch'],
  }

  file { '/etc/logwatch/conf/ignore.conf':
    owner   => root,
    group   => root,
    mode    => '0644',
    source  => 'puppet:///modules/logwatch/ignore.conf',
    require => Package['logwatch'],
  }

  file { '/usr/share/logwatch/default.conf/services/pam_unix.conf':
    owner   => root,
    group   => root,
    mode    => '0644',
    source  => 'puppet:///modules/logwatch/pam_unix.conf',
    require => Package['logwatch'],
  }

}
