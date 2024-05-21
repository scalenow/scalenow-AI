# -*- encoding: utf-8 -*-
# stub: lobby_boy 0.1.3 ruby lib

Gem::Specification.new do |s|
  s.name = "lobby_boy".freeze
  s.version = "0.1.3".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Finn GmbH".freeze]
  s.date = "2018-07-09"
  s.email = ["info@finn.de".freeze]
  s.homepage = "https://github.com/finnlabs/lobby_boy".freeze
  s.licenses = ["GPLv3".freeze]
  s.rubygems_version = "3.5.10".freeze
  s.summary = "Rails engine for OpenIDConnect Session Management".freeze

  s.installed_by_version = "3.5.10".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<rails>.freeze, [">= 3.2.21".freeze])
  s.add_runtime_dependency(%q<omniauth>.freeze, ["~> 1.1".freeze])
  s.add_runtime_dependency(%q<omniauth-openid-connect>.freeze, [">= 0.2.1".freeze])
end
