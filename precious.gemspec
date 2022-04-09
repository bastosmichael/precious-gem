# frozen_string_literal: true

require_relative "lib/precious/version"

Gem::Specification.new do |spec|
  spec.name = "precious"
  spec.version = Precious::VERSION
  spec.authors = ["Michael Bastos"]
  spec.email = ["bastosmichael@gmail.com"]

  spec.summary = "SDK for an existing Lord of the Rings API"
  spec.description = "Well, if you don't know or neither like 'The Lord of the Rings', the epic masterpiece epos by J.R.R. Tolkien, then this API is most likely not for you. But if you do, this massive database will provide you with information about the books, the movie trilogy, many characters and quotes. You are welcome to use the data in your own apps, mixups and (fun) projects — like I did with creating this API. This project is totally non-profit and fan-made!"
  spec.homepage = "https://github.com/bastosmichael/precious-gem"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["allowed_push_host"] = "TODO: Set to your gem server 'https://example.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/bastosmichael/precious-gem"
  spec.metadata["changelog_uri"] = "https://github.com/bastosmichael/precious-gem/blob/main/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) || f.match(%r{\A(?:(?:bin|test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  spec.add_dependency "faraday", "~> 0.15"
  spec.add_dependency "oj", "~> 2.5"

  spec.add_development_dependency "rspec", "~> 3.2"
  spec.add_development_dependency "vcr", "~> 3.0"
  spec.add_development_dependency "webmock", "~> 3.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
