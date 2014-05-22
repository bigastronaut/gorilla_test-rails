# coding: utf-8
$LOAD_PATH.unshift File.expand_path("../lib", __FILE__)
require 'gorilla_test/version'

Gem::Specification.new do |spec|
  spec.name          = "gorillatest"
  spec.version       = GorillaTest::Version::STRING
  spec.authors       = ["Jim Ray"]
  spec.email         = ["jim@bigastronaut.com"]
  spec.description   = %q{Includes script for gorilla test integration testing}
  spec.summary       = %q{Inculde script for gorilla test integration testing}
  spec.homepage      = "http://gorillatest.com"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(spec)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
