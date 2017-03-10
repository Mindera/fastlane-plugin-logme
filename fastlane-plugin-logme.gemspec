# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fastlane/plugin/logme/version'

Gem::Specification.new do |spec|
  spec.name          = 'fastlane-plugin-logme'
  spec.version       = Fastlane::Logme::VERSION
  spec.author        = %q{Luís Esteves}
  spec.email         = %q{ios@mindera.com}

  spec.summary       = %q{Provides a simple way to get logs from two delta commits}
  # spec.homepage      = "https://github.com/Mindera/fastlane-plugin-logme"
  spec.license       = "MIT"

  spec.files         = Dir["lib/**/*"] + %w(README.md LICENSE)
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'pry'
  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rubocop'
  spec.add_development_dependency 'fastlane', '>= 2.5.0'
end
