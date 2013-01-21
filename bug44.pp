node 'www.testing.com'{
include common
include apache, squid
}
#list of nodes
node 'www.testing.com', 'www2.testing.com', 'www3.testing.com' {
include common
include apache, squid
}
#inheritance
node 'www2.testing.com' inherits 'www.testing.com' {
include loadbalancer
}