# -*- encoding: utf-8 -*-
# stub: airbrake 13.0.4 ruby lib

Gem::Specification.new do |s|
  s.name = "airbrake".freeze
  s.version = "13.0.4".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "rubygems_mfa_required" => "true" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Airbrake Technologies, Inc.".freeze]
  s.date = "2023-11-28"
  s.description = "Airbrake is an online tool that provides robust exception tracking in any of\nyour Ruby applications. In doing so, it allows you to easily review errors, tie\nan error to an individual piece of code, and trace the cause back to recent\nchanges. The Airbrake dashboard provides easy categorization, searching, and\nprioritization of exceptions so that when errors occur, your team can quickly\ndetermine the root cause.\n\nAdditionally, this gem includes integrations with such popular libraries and\nframeworks as Rails, Sinatra, Resque, Sidekiq, Delayed Job, Shoryuken,\nActiveJob and many more.\n".freeze
  s.email = "support@airbrake.io".freeze
  s.homepage = "https://airbrake.io".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.6".freeze)
  s.rubygems_version = "3.5.10".freeze
  s.summary = "Airbrake is an online tool that provides robust exception tracking in any of your Ruby applications.".freeze

  s.installed_by_version = "3.5.10".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<airbrake-ruby>.freeze, ["~> 6.0".freeze])
  s.add_development_dependency(%q<rspec>.freeze, ["~> 3".freeze])
  s.add_development_dependency(%q<rspec-wait>.freeze, ["~> 0".freeze])
  s.add_development_dependency(%q<rake>.freeze, ["~> 13".freeze])
  s.add_development_dependency(%q<pry>.freeze, ["~> 0".freeze])
  s.add_development_dependency(%q<appraisal>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rack>.freeze, ["~> 2".freeze])
  s.add_development_dependency(%q<webmock>.freeze, ["~> 3".freeze])
  s.add_development_dependency(%q<amq-protocol>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rack-test>.freeze, ["~> 2.0".freeze])
  s.add_development_dependency(%q<redis>.freeze, ["~> 4.5".freeze])
  s.add_development_dependency(%q<sidekiq>.freeze, ["~> 6".freeze])
  s.add_development_dependency(%q<curb>.freeze, ["~> 1.0".freeze])
  s.add_development_dependency(%q<excon>.freeze, ["~> 0.64".freeze])
  s.add_development_dependency(%q<http>.freeze, ["~> 5.0".freeze])
  s.add_development_dependency(%q<httpclient>.freeze, ["~> 2.8".freeze])
  s.add_development_dependency(%q<typhoeus>.freeze, ["~> 1.3".freeze])
  s.add_development_dependency(%q<redis-namespace>.freeze, ["~> 1.8".freeze])
end
