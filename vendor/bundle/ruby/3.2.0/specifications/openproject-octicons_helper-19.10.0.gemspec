# -*- encoding: utf-8 -*-
# stub: openproject-octicons_helper 19.10.0 ruby lib

Gem::Specification.new do |s|
  s.name = "openproject-octicons_helper".freeze
  s.version = "19.10.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "rubygems_mfa_required" => "false" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["GitHub Inc.".freeze, "OpenProject GmbH".freeze]
  s.date = "2024-04-17"
  s.description = "A rails helper that makes including svg Octicons simple.".freeze
  s.email = ["support@openproject.com".freeze]
  s.homepage = "https://github.com/opf/openproject-octicons".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "3.5.10".freeze
  s.summary = "Octicons rails helper".freeze

  s.installed_by_version = "3.5.10".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<openproject-octicons>.freeze, ["= 19.10.0".freeze])
  s.add_runtime_dependency(%q<railties>.freeze, [">= 0".freeze])
  s.add_runtime_dependency(%q<actionview>.freeze, [">= 0".freeze])
end
