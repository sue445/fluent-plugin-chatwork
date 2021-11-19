# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "fluent-plugin-chatwork"
  spec.version       = "2.0.2"
  spec.authors       = ["sue445"]
  spec.email         = ["sue445@sue445.net"]
  spec.summary       = %q{fluentd output plugin for post to chatwork}
  spec.description   = %q{fluentd output plugin for post to chatwork}
  spec.homepage      = "https://github.com/sue445/fluent-plugin-chatwork"
  spec.license       = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = "#{spec.homepage}/blob/master/CHANGELOG.md"
  spec.metadata["rubygems_mfa_required"] = "true"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "fluentd", [">= 0.14.15", "< 2"]
  spec.add_dependency "chatwork", ">= 0.4.0"

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "coveralls"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "simplecov"
  spec.add_development_dependency "test-unit"
  spec.add_development_dependency "webrick"
end
