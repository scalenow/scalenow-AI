# -*- encoding: utf-8 -*-
# stub: rubytree 2.0.3 ruby lib

Gem::Specification.new do |s|
  s.name = "rubytree".freeze
  s.version = "2.0.3".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "rubygems_mfa_required" => "true" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Anupam Sengupta".freeze]
  s.date = "2023-12-27"
  s.description = "\n    RubyTree is a Ruby implementation of the generic tree data structure. It\n    provides simple APIs to store named nodes, and to access, modify, and\n    traverse the tree.\n\n    The data model is node-centric, where nodes in the tree are the primary\n    structural elements. It supports all common tree-traversal methods (pre-order,\n    post-order, and breadth first).\n\n    RubyTree mixes in the Enumerable and Comparable modules and behaves like a\n    standard Ruby collection (iteration, comparison, etc.).\n\n    RubyTree also includes a binary tree implementation, which provides in-order\n    node traversal besides the other methods.\n\n    RubyTree can import from and export to JSON, and supports Ruby\u2019s object\n    marshaling.\n".freeze
  s.email = "anupamsg@gmail.com".freeze
  s.extra_rdoc_files = ["README.md".freeze, "LICENSE.md".freeze, "API-CHANGES.md".freeze, "History.md".freeze]
  s.files = ["API-CHANGES.md".freeze, "History.md".freeze, "LICENSE.md".freeze, "README.md".freeze]
  s.homepage = "http://rubytree.anupamsg.me".freeze
  s.licenses = ["BSD-2-Clause".freeze]
  s.post_install_message = "    ========================================================================\n                    Thank you for installing RubyTree.\n\n    Note::\n\n    - 2.0.0 is a major release with BREAKING API changes.\n            See `API-CHANGES.md` for details.\n\n    - `Tree::TreeNode#depth` method has been removed (it was broken).\n\n    - Support for `CamelCase` methods names has bee removed.\n\n    - The predicate methods no longer have `is_` or `has_` prefixes. However,\n      aliases with these prefixes exist to support existing client code.\n\n    - Use of integers as node names does not require the optional\n      `num_as_name` flag.\n\n    - `structured_warnings` is no longer a dependency.\n\n    - Explicit support for rbx Ruby has been removed.\n\n    ========================================================================\n".freeze
  s.rdoc_options = ["--title".freeze, "Rubytree Documentation: rubytree-2.0.3".freeze, "--main".freeze, "README.md".freeze, "--quiet".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.6".freeze)
  s.rubygems_version = "3.5.10".freeze
  s.summary = "A generic tree data structure for Ruby.".freeze

  s.installed_by_version = "3.5.10".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<json>.freeze, ["~> 2.0".freeze, "> 2.3.1".freeze])
  s.add_development_dependency(%q<bundler>.freeze, ["~> 2.3".freeze])
  s.add_development_dependency(%q<rake>.freeze, ["~> 13.0".freeze])
  s.add_development_dependency(%q<rdoc>.freeze, ["~> 6.0".freeze])
  s.add_development_dependency(%q<rspec>.freeze, ["~> 3.0".freeze, "> 3.10".freeze])
  s.add_development_dependency(%q<rtagstask>.freeze, ["~> 0.0.4".freeze])
  s.add_development_dependency(%q<rubocop>.freeze, ["~> 1.0".freeze])
  s.add_development_dependency(%q<rubocop-rake>.freeze, ["~> 0.0".freeze])
  s.add_development_dependency(%q<rubocop-rspec>.freeze, ["~> 2.0".freeze])
  s.add_development_dependency(%q<simplecov>.freeze, ["~> 0.21".freeze])
  s.add_development_dependency(%q<simplecov-lcov>.freeze, ["~> 0.8".freeze])
  s.add_development_dependency(%q<test-unit>.freeze, ["~> 3.0".freeze])
  s.add_development_dependency(%q<yard>.freeze, ["~> 0.0".freeze, ">= 0.9.20".freeze])
end
