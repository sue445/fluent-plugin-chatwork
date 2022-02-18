source 'https://rubygems.org'

# Specify your gem's dependencies in fluent-plugin-chatwork.gemspec
gemspec

if Gem::Version.create(RUBY_VERSION) < Gem::Version.create("2.6.0")
  # faraday v2.0.0+ requires Ruby 2.6.0+
  gem "faraday", "< 2.0.0"
end
