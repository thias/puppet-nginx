# Simple definition to install or remove nginx module packages
#
define nginx::module (
  $ensure = 'installed',
) {

  package { "nginx-mod-${title}":
    ensure  => $ensure,
    require => Package['nginx'],
    notify  => Service['nginx'],
  }

}
