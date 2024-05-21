# -*- encoding: utf-8 -*-
# stub: color_conversion 0.1.1 ruby lib

Gem::Specification.new do |s|
  s.name = "color_conversion".freeze
  s.version = "0.1.1".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Derek DeVries".freeze]
  s.date = "2022-01-12"
  s.description = "Convert colors to hex/rgb/hsv".freeze
  s.email = ["derek@sportspyder.com".freeze]
  s.homepage = "https://github.com/devrieda/color_conversion".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.3".freeze)
  s.rubygems_version = "3.5.10".freeze
  s.summary = "Convert colors to hex/rgb/hsv".freeze

  s.installed_by_version = "3.5.10".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_development_dependency(%q<rake>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rspec>.freeze, ["~> 2.9".freeze])
  s.add_development_dependency(%q<guard>.freeze, ["~> 1.7".freeze])
  s.add_development_dependency(%q<guard-rspec>.freeze, ["~> 2.5".freeze])
  s.add_development_dependency(%q<rb-fsevent>.freeze, ["~> 0.9".freeze])
end
