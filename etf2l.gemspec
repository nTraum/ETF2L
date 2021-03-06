# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "etf2l/version"

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

  spec.add_dependency "httparty", "~> 0.13"
  spec.add_dependency "memoizable", "~> 0.4"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "coveralls"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "webmock"
  spec.add_development_dependency "yard"
end
