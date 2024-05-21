# -*- encoding: utf-8 -*-
# stub: ruby-duration 3.2.3 ruby lib

Gem::Specification.new do |s|
  s.name = "ruby-duration".freeze
  s.version = "3.2.3".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 1.3.6".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jose Peleteiro".freeze, "Bruno Azisaka Maciel".freeze]
  s.date = "2016-03-09"
  s.description = "Duration type".freeze
  s.email = ["jose@peleteiro.net".freeze, "bruno@azisaka.com.br".freeze]
  s.homepage = "http://github.com/peleteiro/ruby-duration".freeze
  s.rdoc_options = ["--charset=UTF-8".freeze]
  s.rubygems_version = "3.5.10".freeze
  s.summary = "Duration type".freeze

  s.installed_by_version = "3.5.10".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<activesupport>.freeze, [">= 3.0.0".freeze])
  s.add_runtime_dependency(%q<i18n>.freeze, [">= 0".freeze])
  s.add_runtime_dependency(%q<iso8601>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<bundler>.freeze, [">= 1.0.0".freeze])
  s.add_development_dependency(%q<minitest>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<yard>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rake>.freeze, ["< 11.0".freeze])
  s.add_development_dependency(%q<simplecov>.freeze, [">= 0.3.5".freeze])
  s.add_development_dependency(%q<mongoid>.freeze, [">= 3.0.0".freeze, "< 4.0.0".freeze])
end
