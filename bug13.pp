# /etc/puppetlabs/puppet/manifests/site.pp

# import many manifest files with node definitions
import 'nodes/*.pp'

# import a single manifest file with node definitions
import 'nodes.pp'

# /etc/puppetlabs/puppet/manifests/site.pp
node 'kestrel.example.com' {
import 'nodes/kestrel.pp'
}

# /etc/puppetlabs/puppet/manifests/nodes/kestrel.pp
include ntp
include apache2

if $is_virtual == 'true' {
  warn( 'Tried to include class ntp on virtual machine; this node may be misclassified.' )
}
elsif $operatingsystem == 'Darwin' {
  warn ( 'This NTP module does not yet work on our Mac laptops.' )
else {
  include ntp
}
# comment
/* comment */