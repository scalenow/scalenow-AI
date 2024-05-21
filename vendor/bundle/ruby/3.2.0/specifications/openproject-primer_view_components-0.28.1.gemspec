# -*- encoding: utf-8 -*-
# stub: openproject-primer_view_components 0.28.1 ruby lib

Gem::Specification.new do |s|
  s.name = "openproject-primer_view_components".freeze
  s.version = "0.28.1".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "allowed_push_host" => "https://rubygems.org" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["GitHub Open Source".freeze, "OpenProject GmbH".freeze]
  s.date = "2024-04-10"
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.7.0".freeze)
  s.rubygems_version = "3.5.10".freeze
  s.summary = "ViewComponents of the Primer Design System for OpenProject".freeze

  s.installed_by_version = "3.5.10".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<actionview>.freeze, [">= 5.0.0".freeze])
  s.add_runtime_dependency(%q<activesupport>.freeze, [">= 5.0.0".freeze])
  s.add_runtime_dependency(%q<openproject-octicons>.freeze, [">= 19.9.0".freeze])
  s.add_runtime_dependency(%q<view_component>.freeze, [">= 3.1".freeze, "< 4.0".freeze])
end
