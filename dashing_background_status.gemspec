# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dashing_background_status/version'

Gem::Specification.new do |spec|
  spec.name          = "dashing_background_status"
  spec.version       = DashingBackgroundStatus::VERSION
  spec.authors       = ["Ben Colon"]
  spec.email         = ["ben@colon.com.fr"]
  spec.description   = %q{The background color of your widget (between green & red) is set according to the value you send it.}
  spec.summary       = %q{The background color of your widget is set according to the value you send it.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
