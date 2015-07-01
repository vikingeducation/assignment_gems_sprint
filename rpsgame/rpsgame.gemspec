# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'rpsgame/version'

Gem::Specification.new do |spec|
  spec.name          = "rpsgame"
  spec.version       = Rpsgame::VERSION
  spec.authors       = ["ayva", "Alice"]
  spec.email         = ["olga.ayva@gmail.com", "alice.o.fung@gmail.com"]

  spec.summary       = %q{Rock Paper Scissors game}
  spec.description   = %q{}
  spec.homepage      = ""
  spec.license       = "MIT"


  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
end
