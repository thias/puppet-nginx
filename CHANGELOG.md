* Fix README upstream example, fixes #11 (@jmetzger).
* Remove legacy facts usage.

#### 2019-09-17 - 1.0.10
* Rebase mime.types to latest 1.16.1 version.

#### 2016-06-14 - 1.0.9
* Add support for modular nginx 1.10+ packages.
* Add support for `file` in main `confdir` instead of `conf.d` subdir.
* Add facts to report nginx majversion, minversion and full version.

#### 2016-02-02 - 1.0.8
* Add support for nginx::file ensure => absent.

#### 2015-12-01 - 1.0.7
* Add support for multiple error_log by using an array.

#### 2015-08-21 - 1.0.6
* Add more ssl_* parameters.

#### 2015-04-28 - 1.0.5
* Add more ssl_* parameters.
* Make params values easy to override using hiera.

#### 2015-04-01 - 1.0.4
* Add gzip_comp_level parameter.

#### 2014-12-16 - 1.0.3
* Update mime.types with current nginx 1.6 content.
* Clean ups to make puppet lint happy.

#### 2014-12-02 - 1.0.2
* Fix nginx.conf.erb upstream with recent puppet versions (#9).

#### 2014-10-21 - 1.0.1
* Add SELinux support, RHEL 6.6 now targets nginx with httpd_t.

#### 2014-09-09 - 1.0.0
* Revert worker_processes default value since 'auto' only works with 1.2+
* Add basic Debian and Ubuntu support (#3 @DavidGriffith, #8 @tomav).
* Add support for fastcgi_read_timeout.

#### 2014-04-01 - 0.1.9
* Fix http_raw_lines (whurleyf1).
* Fix owner, group and mode of nginx::file resources.

#### 2013-11-27 - 0.1.8
* Add support for gzip_proxied.
* Add support for worker_cpu_affinity.
* Change worker_processes default to 'auto', which makes most sense.

#### 2013-11-21 - 0.1.7
* Follow recommendation of using try_files in php.conf.inc (jaysh).
* Make error_log configurable.
* Also include a useful php-to-index.conf.inc example.
* Add support for global ssl_certificate and ssl_certificate_key directives.

#### 2013-10-14 - 0.1.6
* Fix README title line.
* Fix conf.d directory creation.
* Fix when changing default.conf (jaysh).

#### 2013-05-20 - 0.1.5
* Use 2-space indent.
* Also use @-prefixed variables in mime.types.erb.

#### 2012-12-18 - 0.1.4
* Add options for proxy and fastcgi buffers.

#### 2012-09-19 - 0.1.3
* Update README and include mentioned example php.conf.inc file.
* Add mime_types hash to allow adding mime type extensions.

#### 2012-07-17 - 0.1.2
* Fix markdown in the README.
* Move the service restart command to params, fix for Gentoo.
* Add support for specifying "upstream" as hashes.
* Add support for http_raw_lines for simple cases with no config snippet.
* Fix \n in the disabled default.conf.

#### 2012-03-12 - 0.1.1
* Clean up the nginx module to match current puppetlabs guidelines.
* Rename the conf definition to file, to be consistent with apache_httpd::file.
* Add the params class to split out distro-specific parameters.
* Add simple smoke testing tests.
* Remove leftover listen_http and listen_https options.

