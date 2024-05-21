# -*- encoding: utf-8 -*-
# stub: carrierwave_direct 2.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "carrierwave_direct".freeze
  s.version = "2.1.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["David Wilkie".freeze]
  s.date = "2018-10-25"
  s.description = "Process your uploads in the background by uploading directly to S3".freeze
  s.email = ["dwilkie@gmail.com".freeze]
  s.homepage = "https://github.com/dwilkie/carrierwave_direct".freeze
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0".freeze)
  s.rubygems_version = "3.5.10".freeze
  s.summary = "Upload direct to S3 using CarrierWave".freeze

  s.installed_by_version = "3.5.10".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<carrierwave>.freeze, [">= 1.0.0".freeze])
  s.add_runtime_dependency(%q<fog-aws>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0".freeze])
  s.add_development_dependency(%q<timecop>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rails>.freeze, [">= 3.2.12".freeze])
  s.add_development_dependency(%q<sqlite3>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<capybara>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<byebug>.freeze, [">= 0".freeze])
end
