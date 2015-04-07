# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'jankenpon/version'

Gem::Specification.new do |spec|
  spec.name          = "jankenpon"
  spec.version       = Jankenpon::VERSION
  spec.authors       = ["niconan"]
  spec.email         = ["nick.hax@gmail.com"]

  spec.summary       = %q{Play rock, paper, scissors against an AI or another player.}
  spec.description   = %q{}
  spec.homepage      = "https://github.com/nicoNaN/assignment_gems_sprint"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = ""
  end

  spec.add_development_dependency "bundler", "~> 1.9"
  spec.add_development_dependency "rake", "~> 10.0"
end
