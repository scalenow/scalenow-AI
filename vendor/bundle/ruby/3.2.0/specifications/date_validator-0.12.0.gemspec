# -*- encoding: utf-8 -*-
# stub: date_validator 0.12.0 ruby lib

Gem::Specification.new do |s|
  s.name = "date_validator".freeze
  s.version = "0.12.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Oriol Gual".freeze, "Josep M. Bach".freeze, "Josep Jaume Rey".freeze]
  s.date = "2021-07-16"
  s.description = "A simple, ORM agnostic, Ruby 1.9 compatible date validator for Rails 3+, based on ActiveModel. Currently supporting :after, :before, :after_or_equal_to and :before_or_equal_to options.".freeze
  s.email = ["info@codegram.com".freeze]
  s.homepage = "http://github.com/codegram/date_validator".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.2".freeze)
  s.rubygems_version = "3.5.10".freeze
  s.summary = "A simple, ORM agnostic, Ruby 1.9 compatible date validator for Rails 3+, based on ActiveModel.".freeze

  s.installed_by_version = "3.5.10".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<activemodel>.freeze, [">= 3".freeze])
  s.add_runtime_dependency(%q<activesupport>.freeze, [">= 3".freeze])
  s.add_development_dependency(%q<minitest>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rake>.freeze, [">= 12.3.3".freeze])
  s.add_development_dependency(%q<tzinfo>.freeze, [">= 0".freeze])
end
