# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fluent/plugin/out_chatwork/version'

Gem::Specification.new do |spec|
  spec.name          = "fluent-plugin-out_chatwork"
  spec.version       = "0.0.1"
  spec.authors       = ["sue445"]
  spec.email         = ["sue445@sue445.net"]
  spec.summary       = %q{fluentd output plugin for post to chatwork}
  spec.description   = %q{fluentd output plugin for post to chatwork}
  spec.homepage      = "https://github.com/sue445/fluent-plugin-out_chatwor"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "fluentd"
  spec.add_dependency "chatwork"

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", "~> 3.0.0"
end
