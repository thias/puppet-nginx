# Simple facts to get nginx version, *after* nginx is installed.
# Mostly useful for reporting and inventory, not so much from Puppet manifests.

nginx_version = Facter::Util::Resolution.exec('nginx -v 2>&1')

# nginx uses semantic versioning x.y.z
if nginx_version =~ /nginx\/\d+\.\d+\.\d+$/
  Facter.add(:nginx_version) { setcode { nginx_version[/\d+\.\d+\.\d+/] } }
  Facter.add(:nginx_majversion) { setcode { nginx_version[/\d+/] } }
  Facter.add(:nginx_minversion) { setcode { nginx_version[/\d+\.\d+/] } }
end

