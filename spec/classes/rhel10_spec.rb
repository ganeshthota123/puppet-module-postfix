describe 'postfix' do
  context 'on RedHat 10' do
    let(:facts) do
      {
        main_relayhost: '://example.com',
        os: {
          name: 'RedHat',
          release: { full: '10.0', major: '10' },
          family: 'RedHat',
          hardware: 'x86_64',
        },
        osfamily: 'RedHat',
        operatingsystem: 'RedHat',
        operatingsystemrelease: '10.0',
        operatingsystemmajrelease: '10',
        networking: {
          ip: '127.0.0.1',
          fqdn: 'localhost.localdomain',
          hostname: 'localhost',
        },
      }
    end

    # Explicitly provide a valid parameter to satisfy data validation
    let(:params) do
      {
        main_relayhost: 'mailhost.example.com',
      }
    end

    it { is_expected.to compile.with_all_deps }
  end
end
