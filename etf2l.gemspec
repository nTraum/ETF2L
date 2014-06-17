# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'etf2l/version'

Gem::Specification.new do |spec|
  spec.name          = "etf2l"
  spec.version       = Etf2l::VERSION
  spec.authors       = ["nTraum"]
  spec.email         = ["philipp.press@googlemail.com"]
  spec.summary       = "Ruby wrapper for the ETF2L API"
  spec.homepage      = "https://github.com/nTraum/ETF2L"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
end
