# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ssh_config_to_vuls_config/version'

Gem::Specification.new do |spec|
  spec.name          = 'ssh_config_to_vuls_config'
  spec.version       = SshConfigToVulsConfig::VERSION
  spec.authors       = ['k1LoW']
  spec.email         = ['k1lowxb@gmail.com']

  spec.summary       = 'ssh_config to vuls config TOML format'
  spec.description   = 'ssh_config to vuls config TOML format'
  spec.homepage      = 'https://github.com/k1LoW/ssh_config_to_vuls_config'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_runtime_dependency 'thor'
  spec.add_runtime_dependency 'toml-rb'
  spec.add_runtime_dependency 'sconb', '~> 1.2'
  spec.add_development_dependency 'bundler', '~> 1.9'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'octorelease'
  spec.add_development_dependency 'pry'
end
