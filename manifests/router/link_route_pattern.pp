# == Define: qpid::router::link_route_pattern
#
# Configure a link route pattern
#
# == Parameters
#
# $prefix::     Prefix to use
#
# $direction:: Direction when using asymmetric routing
#
# $connector::  Connector for this link route pattern
#
define qpid::router::link_route_pattern(
  $prefix    = 'queue.',
  $direction = undef,
  $connector = undef,
){

  concat::fragment {"qdrouter+link_route_pattern_${name}.conf":
    target  => $qpid::router::config_file,
    content => template('qpid/router/link_route_pattern.conf.erb'),
    order   => '04',
  }

}
