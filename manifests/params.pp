# Class: nginx::params
#
# Parameters for and from the nginx module.
#
# Parameters :
#  none
#
# Sample Usage :
#  include nginx::params
#
  # The easy bunch
  $service = 'nginx'
  $confdir = '/etc/nginx'
  # user
  case $::operatingsystem {
    'Debian',
    'Ubuntu': { $user = 'www-data' }
     default: { $user = 'nginx' }
  }
  # service restart
  case $::operatingsystem {
    'Fedora',
    'RedHat',
    'CentOS': { $service_restart = '/sbin/service nginx reload' }
     default: { $service_restart = '/etc/init.d/nginx reload' }
  }
  # remove_default_conf
  case $::operatingsystem {
    'Fedora',
    'RedHat',
    'CentOS': { $remove_default_conf = true }
     default: { $remove_default_conf = false }
  }
}

