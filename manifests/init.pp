# @summary A short summary of the purpose of this class
#
# A description of what this class does
#
# @example
#   include litmus_test
class litmus_test {

  file {'/tmp/certificate.crt':
    ensure => file,
    source => 'puppet:///modules/litmus_test/certificate.crt',
  }
}
