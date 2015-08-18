# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'stove/version'

Gem::Specification.new do |spec|
  spec.name          = 'oven'
  spec.version       = Stove::VERSION
  spec.authors       = ['Arthur Maltson']
  spec.email         = ['arthur@maltson.com']
  spec.description   = "Fork of stove gem"
  spec.summary       = "A command-line utility for releasing Chef community cookbooks"
  spec.homepage      = 'https://github.com/amaltson/stove'
  spec.license       = 'Apache 2.0'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.required_ruby_version = '>= 1.9'

  # Runtime dependencies
  spec.add_dependency 'chef-api', '~> 0.5'
  spec.add_dependency 'logify',   '~> 0.2'

  spec.add_development_dependency 'aruba',          '~> 0.6'
  spec.add_development_dependency 'bundler',        '~> 1.6'
  spec.add_development_dependency 'community-zero', '~> 2.0'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec',          '~> 3.0'
end
