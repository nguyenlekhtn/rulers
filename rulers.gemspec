# frozen_string_literal: true

require_relative "lib/rulers/version"

Gem::Specification.new do |spec|
  spec.name = "rulers"
  spec.version = Rulers::VERSION
  spec.authors = ["nguyenlekhtn"]
  spec.email = ["25528200+nguyenlekhtn@users.noreply.github.com"]

  spec.summary = %q{A Rack-Web Framework}
  spec.description = %q{A Rack-based Web Framework, but with extra awesome.}
  spec.homepage = "https://github.com/nguyenlekhtn/rulers"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = ""

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/nguyenlekhtn/rulers"
  spec.metadata["changelog_uri"] = "https://github.com/nguyenlekhtn/rulers/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_dependency "rack", "~>2.2"
  spec.add_dependency "webrick"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "minitest"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
