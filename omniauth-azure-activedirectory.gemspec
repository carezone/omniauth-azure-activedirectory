$LOAD_PATH.push File.expand_path('../lib', __FILE__)
require 'omniauth/azure_activedirectory/version'

Gem::Specification.new do |s|
  s.name            = 'omniauth-azure-activedirectory'
  s.version         = OmniAuth::AzureActiveDirectory::VERSION
  s.author          = 'Microsoft Corporation'
  s.email           = 'nugetaad@microsoft.com'
  s.summary         = 'Azure Active Directory strategy for OmniAuth'
  s.description     = 'Allows developers to authenticate to AAD'
  s.homepage        = 'https://github.com/AzureAD/omniauth-azure-activedirectory'
  s.license         = 'MIT'

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if s.respond_to?(:metadata)
    s.metadata['allowed_push_host'] = "https://gems.czops.net"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  s.files           = `git ls-files`.split("\n")
  s.require_paths   = ['lib']

  s.add_runtime_dependency 'jwt', '~> 1.5'
  s.add_runtime_dependency 'omniauth', '~> 1.7.1'

  s.add_development_dependency 'rake', '~> 10.4'
  s.add_development_dependency 'rspec', '~> 3.3'
  s.add_development_dependency 'rubocop', '~> 0.32'
  s.add_development_dependency 'simplecov', '~> 0.10'
  s.add_development_dependency 'webmock', '~> 1.21'
end
