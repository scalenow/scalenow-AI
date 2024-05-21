# -*- encoding: utf-8 -*-
# stub: text-hyphen 1.5.0 ruby lib

Gem::Specification.new do |s|
  s.name = "text-hyphen".freeze
  s.version = "1.5.0".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "rubygems_mfa_required" => "true" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Austin Ziegler".freeze]
  s.date = "2023-03-18"
  s.description = "Text::Hyphen is a Ruby library to hyphenate words in various languages using\nRuby-fied versions of TeX hyphenation patterns. It will properly hyphenate\nvarious words according to the rules of the language the word is written in. The\nalgorithm is based on that of the TeX typesetting system by Donald E. Knuth.\n\nThis is originally based on the Perl implementation of [TeX::Hyphen][] and the\n[Ruby port][]. The language hyphenation pattern files are based on the sources\navailable from [CTAN][] as of 2004.12.19 and have been manually translated by\nAustin Ziegler.\n\nThis is a small feature release adding Russian language support and fixing a bug\nin the custom hyphen support introduced last version. This release provides both\nRuby 1.8.7 and Ruby 1.9.2 support (but please read below). In short, Ruby 1.8\nsupport is deprecated and I will not be providing any bug fixes related to Ruby\n1.8. New features will be developed and tested against Ruby 1.9 only.".freeze
  s.email = ["halostatue@gmail.com".freeze]
  s.executables = ["ruby-hyphen".freeze]
  s.extra_rdoc_files = ["Code-of-Conduct.md".freeze, "Contributing.md".freeze, "History.md".freeze, "Licence.md".freeze, "Manifest.txt".freeze, "README.md".freeze]
  s.files = ["Code-of-Conduct.md".freeze, "Contributing.md".freeze, "History.md".freeze, "Licence.md".freeze, "Manifest.txt".freeze, "README.md".freeze, "bin/ruby-hyphen".freeze]
  s.homepage = "https://rubygems.org/gems/text-hyphen".freeze
  s.licenses = ["MIT".freeze, "Various".freeze]
  s.rdoc_options = ["--main".freeze, "README.md".freeze]
  s.rubygems_version = "3.5.10".freeze
  s.summary = "Text::Hyphen is a Ruby library to hyphenate words in various languages using Ruby-fied versions of TeX hyphenation patterns".freeze

  s.installed_by_version = "3.5.10".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_development_dependency(%q<hoe>.freeze, [">= 3.0".freeze, "< 5".freeze])
  s.add_development_dependency(%q<hoe-doofus>.freeze, ["~> 1.0".freeze])
  s.add_development_dependency(%q<hoe-gemspec2>.freeze, ["~> 1.1".freeze])
  s.add_development_dependency(%q<hoe-git2>.freeze, ["~> 1.7".freeze])
  s.add_development_dependency(%q<hoe-rubygems>.freeze, ["~> 1.0".freeze])
  s.add_development_dependency(%q<test-unit>.freeze, [">= 0".freeze])
  s.add_development_dependency(%q<rake>.freeze, [">= 10.0".freeze, "< 14.0".freeze])
  s.add_development_dependency(%q<standard>.freeze, ["~> 1.0".freeze])
  s.add_development_dependency(%q<rdoc>.freeze, [">= 4.0".freeze, "< 7".freeze])
  s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.21".freeze])
end
