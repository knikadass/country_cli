require_relative 'lib/country_cli/version'

Gem::Specification.new do |spec|
  spec.name          = "country_cli"
  spec.version       = CountryCli::VERSION
  spec.authors       = ["Knika Dass"]
  spec.email         = ["knikadass@gmail.com"]

  spec.summary       = "country GEM"
  spec.description   = "country GEM"
  spec.homepage      = "https://github.com/knikadass/country_cli"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  spec.metadata["allowed_push_host"] = "https://github.com/knikadass/country_cli"

  spec.metadata["homepage_uri"] = "https://github.com/knikadass/country_cli"
  spec.metadata["source_code_uri"] = "https://github.com/knikadass/country_cli"
  spec.metadata["changelog_uri"] = "https://github.com/knikadass/country_cli"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "pry"
  spec.add_development_dependency "httparty"
end
