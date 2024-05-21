# -*- encoding: utf-8 -*-
# stub: puma-plugin-statsd 2.6.0 ruby lib

Gem::Specification.new do |s|
  s.name = "puma-plugin-statsd".freeze
  s.version = "2.6.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["James Healy".freeze]
  s.date = "2023-12-11"
  s.email = "james@yob.id.au".freeze
  s.executables = ["statsd-to-stdout".freeze]
  s.files = ["bin/statsd-to-stdout".freeze]
  s.homepage = "https://github.com/yob/puma-plugin-statsd".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.5.10".freeze
  s.summary = "Send puma metrics to statsd via a background thread".freeze

  s.installed_by_version = "3.5.10".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<puma>.freeze, [">= 5.0".freeze, "< 7".freeze])
  s.add_development_dependency(%q<bundler>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rake>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<minitest>.freeze, ["~> 5.0".freeze])
  s.add_development_dependency(%q<sinatra>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rack>.freeze, [">= 0".freeze])
end
