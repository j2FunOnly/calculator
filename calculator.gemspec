# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'calculator/version'

Gem::Specification.new do |spec|
  spec.name          = "calculator"
  spec.version       = Calculator::VERSION
  spec.authors       = ["j2FunOnly"]
  spec.email         = ["j2funonly@ya.ru"]

  spec.summary       = %q{Simple Calculator.}
  spec.description   = %q{Simple Ruby Calculator example.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "bin"
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
