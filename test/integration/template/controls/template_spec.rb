control 'template-1.0' do
  impact 1.0
  title 'Template service'
  desc 'Template service should be enabled and running'
  describe service('template') do
    it { should be_running }
    it { should be_enabled }
  end
end
