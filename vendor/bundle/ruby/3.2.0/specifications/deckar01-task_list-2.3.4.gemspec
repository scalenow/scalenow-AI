# -*- encoding: utf-8 -*-
# stub: deckar01-task_list 2.3.4 ruby lib

Gem::Specification.new do |s|
  s.name = "deckar01-task_list".freeze
  s.version = "2.3.4".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://gitlab.com/deckar01/task_list/-/issues", "homepage_uri" => "https://gitlab.com/deckar01/task_list", "source_code_uri" => "https://gitlab.com/deckar01/task_list" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Jared Deckard".freeze, "Matt Todd".freeze]
  s.date = "2024-03-04"
  s.description = "Markdown TaskList components".freeze
  s.email = ["jared.deckard@gmail.com".freeze]
  s.homepage = "https://gitlab.com/deckar01/task_list".freeze
  s.licenses = ["MIT".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.0.0".freeze)
  s.rubygems_version = "3.5.10".freeze
  s.summary = "Markdown TaskList components".freeze

  s.installed_by_version = "3.5.10".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<html-pipeline>.freeze, ["~> 2.0".freeze])
  s.add_development_dependency(%q<commonmarker>.freeze, ["~> 0.23".freeze])
  s.add_development_dependency(%q<rake>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<coffee-script>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<json>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rack>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<sprockets>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<minitest>.freeze, ["~> 5.3.2".freeze])
end
