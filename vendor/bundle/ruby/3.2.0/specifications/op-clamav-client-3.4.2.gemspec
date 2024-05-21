# -*- encoding: utf-8 -*-
# stub: op-clamav-client 3.4.2 ruby lib

Gem::Specification.new do |s|
  s.name = "op-clamav-client".freeze
  s.version = "3.4.2".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Franck Verrot".freeze]
  s.date = "2024-04-22"
  s.description = "ClamAV::Client connects to a Clam Anti-Virus clam daemon and send commands.".freeze
  s.email = ["franck@verrot.fr".freeze]
  s.homepage = "https://github.com/franckverrot/clamav-client".freeze
  s.licenses = ["GPL-v3".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.5".freeze)
  s.rubygems_version = "3.5.10".freeze
  s.summary = "ClamAV::Client connects to a Clam Anti-Virus clam daemon and send commands.".freeze

  s.installed_by_version = "3.5.10".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_development_dependency(%q<bundler>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rake>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<pry>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<minitest>.freeze, [">= 0".freeze])
end
