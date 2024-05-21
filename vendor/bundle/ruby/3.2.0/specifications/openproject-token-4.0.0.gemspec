# -*- encoding: utf-8 -*-
# stub: openproject-token 4.0.0 ruby lib

Gem::Specification.new do |s|
  s.name = "openproject-token".freeze
  s.version = "4.0.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["OpenProject GmbH".freeze]
  s.date = "2023-11-08"
  s.email = "info@openproject.com".freeze
  s.homepage = "https://www.openproject.org".freeze
  s.licenses = ["GPL-3.0".freeze]
  s.rubygems_version = "3.5.10".freeze
  s.summary = "OpenProject EE token reader".freeze

  s.installed_by_version = "3.5.10".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<activemodel>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<pry>.freeze, ["~> 0.10".freeze])
  s.add_development_dependency(%q<rspec>.freeze, ["~> 3.5".freeze])
  s.add_development_dependency(%q<debug>.freeze, [">= 0".freeze])
end
