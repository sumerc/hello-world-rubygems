lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "hello/world/rubygems/version"

Gem::Specification.new do |spec|
  spec.name          = "hello-world-rubygems"
  spec.version       = Hello::World::Rubygems::VERSION
  spec.authors       = ["n13-org", "KargWare"]
  spec.email         = ["rubygems.org@n13.org"]

  spec.summary       = %q{A hello world gem project for rubygems.org}
  spec.description   = %q{A `hello-world` gem, written in ruby, including tests (minitest), Rakefile and GitHub Actions to publish a package to rubygems.org}
  spec.homepage      = "https://github.com/n13org/hello-world-rubygems"
  spec.license       = "MIT"
  
  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/n13org/hello-world-rubygems"
  spec.metadata["changelog_uri"] = "https://github.com/n13org/hello-world-rubygems/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 12.3.3"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "rubocop", "~> 0.82.0"
  spec.add_development_dependency "simplecov", "~> 0.18.5"
end
