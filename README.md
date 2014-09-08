# puppet-nginx

## Overview

Install, enable and configure an NGINX web server instance with its main
configuration file options as well as additional configuration snippets.

The module is very Red Hat Enterprise Linux focused, as the defaults try to
change everything in ways which are typical for RHEL, but it also works on
other distributions and is very easy to port if needed.

* `nginx` : Main class for the NGINX web server.
* `nginx::file` : Manage additional configuration snippets.

## Examples

Default server, with a typical minimal virtualhost and ready for PHP-FPM :

```puppet
class { '::nginx':
  # Fix for "upstream sent too big header ..." errors
  fastcgi_buffers     => '8 8k',
  fastcgi_buffer_size => '8k',
  upstream => {
    fpmbackend => 'server unix:/var/run/php-fpm-www.sock',
  },
}
nginx::file { 'www.example.com.conf':
  content => template('mymodule/www.example.com.conf.erb'),
}
# Use the included example FastCGI for PHP configuration
nginx::file { 'php.conf.inc':
  source => 'puppet:///modules/nginx/php.conf.inc',
}
```

Sample configuration file `mymodule/www.example.com.conf.erb` mentioned above :

```
# Main virtualhost
server {
  listen 80;
  server_name www.example.com;
  root /var/www/www.example.com;
  include /etc/nginx/conf.d/php.conf.inc;
  #include /etc/nginx/conf.d/php-to-index.conf.inc
  access_log /var/log/nginx/www.example.com-access.log main;
  error_log /var/log/nginx/www.example.com-error.log;
}
```

If you intend to use a PHP framework where all non-existing requests must be
handled by `/index.php`, then also install and include `php-to-index.conf.inc`.

