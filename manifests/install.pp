# Class: nginx::install
#
# Install the NGINX web server package.
#
# Parameters :
#  none
#
# Sample Usage :
#  include nginx::install
#
class nginx::install {
  include nginx::params

  package { $nginx::params::package:
    alias  => 'nginx',
    ensure => installed,
  }
}
