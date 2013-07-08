# Class: nginx::service
#
# Enable the NGINX web server.
#
# Parameters :
#  none
#
# Sample Usage :
#  include nginx::service
#
class nginx::service {
  include nginx::params

  service { $nginx::params::service:
    enable    => true,
    ensure    => running,
    restart   => $nginx::params::service_restart,
    hasstatus => true,
    alias     => 'nginx',
  }
}
