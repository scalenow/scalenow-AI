# -*- encoding: utf-8 -*-
# stub: store_attribute 1.2.0 ruby lib

Gem::Specification.new do |s|
  s.name = "store_attribute".freeze
  s.version = "1.2.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "http://github.com/palkan/store_attribute/issues", "changelog_uri" => "https://github.com/palkan/store_attribute/blob/master/CHANGELOG.md", "documentation_uri" => "http://github.com/palkan/store_attribute", "homepage_uri" => "http://github.com/palkan/store_attribute", "source_code_uri" => "http://github.com/palkan/store_attribute" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["palkan".freeze]
  s.date = "2023-11-29"
  s.description = "ActiveRecord extension which adds typecasting to store accessors".freeze
  s.email = ["dementiev.vm@gmail.com".freeze]
  s.homepage = "http://github.com/palkan/store_attribute".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.6.0".freeze)
  s.rubygems_version = "3.5.10".freeze
  s.summary = "ActiveRecord extension which adds typecasting to store accessors".freeze

  s.installed_by_version = "3.5.10".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<activerecord>.freeze, [">= 6.0".freeze])
  s.add_development_dependency(%q<pg>.freeze, [">= 0.18".freeze])
  s.add_development_dependency(%q<rake>.freeze, [">= 13.0".freeze])
  s.add_development_dependency(%q<rspec>.freeze, [">= 3.5.0".freeze])
end
