require 'spec_helper_acceptance'

pp = <<-PUPPETCODE
    include ::litmus_test
PUPPETCODE

describe 'certificate with serverspec' do
  filename = '/tmp/certificate.crt'

  it { idempotent_apply(pp) }

  describe x509_certificate(filename) do
    it { is_expected.to be_certificate }
    its(:subject) { is_expected.to eq '/C=SE/L=Gothenburg/CN=luksi1.domain.test' }
  end
end
