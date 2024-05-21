# -*- encoding: utf-8 -*-
# stub: omniauth-saml 1.10.3 ruby lib

Gem::Specification.new do |s|
  s.name = "omniauth-saml".freeze
  s.version = "1.10.3".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Raecoo Cao".freeze, "Ryan Wilcox".freeze, "Rajiv Aaron Manglani".freeze, "Steven Anderson".freeze, "Nikos Dimitrakopoulos".freeze, "Rudolf Vriend".freeze, "Bruno Pedro".freeze]
  s.date = "2020-10-14"
  s.description = "A generic SAML strategy for OmniAuth.".freeze
  s.email = "rajiv@alum.mit.edu".freeze
  s.homepage = "https://github.com/omniauth/omniauth-saml".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.4".freeze)
  s.rubygems_version = "3.5.10".freeze
  s.summary = "A generic SAML strategy for OmniAuth.".freeze

  s.installed_by_version = "3.5.10".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<omniauth>.freeze, ["~> 1.3".freeze, ">= 1.3.2".freeze])
  s.add_runtime_dependency(%q<ruby-saml>.freeze, ["~> 1.9".freeze])
  s.add_development_dependency(%q<rake>.freeze, [">= 12.3.3".freeze])
  s.add_development_dependency(%q<rspec>.freeze, ["~> 3.4".freeze])
  s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.11".freeze])
  s.add_development_dependency(%q<rack-test>.freeze, ["~> 0.6".freeze, ">= 0.6.3".freeze])
  s.add_development_dependency(%q<conventional-changelog>.freeze, ["~> 1.2".freeze])
  s.add_development_dependency(%q<coveralls>.freeze, [">= 0.8.23".freeze])
end
