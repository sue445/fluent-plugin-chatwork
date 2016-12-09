# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "fluent-plugin-out_chatwork"
  spec.version       = "0.0.99.0.beta1"
  spec.authors       = ["sue445"]
  spec.email         = ["sue445@sue445.net"]
  # TODO: Tweak after
  spec.summary       = %q{fluentd output plugin for post to chatwork}
  spec.description   = %q{fluentd output plugin for post to chatwork}
  spec.homepage      = "https://github.com/sue445/fluent-plugin-out_chatwork"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  # TODO: Remove version
  spec.add_dependency "fluent-plugin-chatwork", "1.0.0.beta1"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "codeclimate-test-reporter", "~> 1.0.0"
  spec.add_development_dependency "coveralls"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "test-unit"

  spec.post_install_message = <<-EOS
===========================================================================
[DEPRECATION WARNING] fluent-plugin-out_chatwork is deprecated.
Please install fluent-plugin-chatwork instead of fluent-plugin-out_chatwork
===========================================================================
  EOS
end
