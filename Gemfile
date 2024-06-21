source 'https://rubygems.org'

# Specify your gem's dependencies in fluent-plugin-chatwork.gemspec
gemspec

if Gem::Version.create(RUBY_VERSION) < Gem::Version.create("2.6.0")
  # faraday v2.0.0+ requires Ruby 2.6.0+
  gem "faraday", "< 2.0.0"
end

if Gem::Version.create(RUBY_VERSION) < Gem::Version.create("2.3.0")
  # multipart-post uses `Object.deprecate_constant`, but this available since Ruby 2.3.0+
  # https://github.com/socketry/multipart-post/blob/v2.2.0/lib/multipart/post/parts.rb#L152
  gem "multipart-post", "< 2.2.0"

  # serverengine uses `&.`, but this available since Ruby 2.3.0+
  # https://github.com/treasure-data/serverengine/blob/v2.3.0/lib/serverengine/server.rb#L83
  gem "serverengine", "< 2.3.0"
end

if Gem::Version.create(RUBY_VERSION) < Gem::Version.create("2.7.0")
  # term-ansicolor 1.9.0+ doesn't work on Ruby < 2.7
  gem "term-ansicolor", "< 1.9.0"
end
