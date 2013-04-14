# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cache/backend/inmemory/version'

Gem::Specification.new do |spec|
  spec.name          = "cache-backend-inmemory"
  spec.version       = Cache::Backend::Inmemory::VERSION
  spec.authors       = ["Thorben Schröder"]
  spec.email         = ["info@thorbenschroeder.de"]
  spec.description   = %q{A backend for the Quarter Spiral ``cache-client`` gem using an in memory store.}
  spec.summary       = %q{A backend for the Quarter Spiral ``cache-client`` gem using an in memory store.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"

  spec.add_development_dependency "cache-client", '~> 0.0.4'
end
