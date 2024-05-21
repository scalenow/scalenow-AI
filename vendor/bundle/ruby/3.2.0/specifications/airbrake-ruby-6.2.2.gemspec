# -*- encoding: utf-8 -*-
# stub: airbrake-ruby 6.2.2 ruby lib

Gem::Specification.new do |s|
  s.name = "airbrake-ruby".freeze
  s.version = "6.2.2".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "rubygems_mfa_required" => "true" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Airbrake Technologies, Inc.".freeze]
  s.date = "2023-10-04"
  s.description = "Airbrake Ruby is a plain Ruby notifier for Airbrake (https://airbrake.io), the\nleading exception reporting service. Airbrake Ruby provides minimalist API that\nenables the ability to send any Ruby exception to the Airbrake dashboard. The\nlibrary is extremely lightweight and it perfectly suits plain Ruby applications.\nFor apps that are built with Rails, Sinatra or any other Rack-compliant web\nframework we offer the airbrake gem (https://github.com/airbrake/airbrake). It\nhas additional features such as reporting of any unhandled exceptions\nautomatically, integrations with Resque, Sidekiq, Delayed Job and many more.\n".freeze
  s.email = "support@airbrake.io".freeze
  s.homepage = "https://airbrake.io".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.5".freeze)
  s.rubygems_version = "3.5.10".freeze
  s.summary = "Ruby notifier for https://airbrake.io".freeze

  s.installed_by_version = "3.5.10".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<rbtree3>.freeze, ["~> 0.6".freeze])
  s.add_development_dependency(%q<rspec>.freeze, ["~> 3".freeze])
  s.add_development_dependency(%q<rspec-its>.freeze, ["~> 1.2".freeze])
  s.add_development_dependency(%q<rake>.freeze, ["~> 13".freeze])
  s.add_development_dependency(%q<pry>.freeze, ["~> 0".freeze])
  s.add_development_dependency(%q<webmock>.freeze, ["~> 3.8".freeze])
  s.add_development_dependency(%q<benchmark-ips>.freeze, ["~> 2".freeze])
  s.add_development_dependency(%q<yard>.freeze, ["~> 0.9".freeze])
end
