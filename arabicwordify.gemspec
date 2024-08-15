# arabicwordify.gemspec
Gem::Specification.new do |spec|
  spec.name          = "arabic-wordify"
  spec.version       = "1.0"
  spec.authors       = "MAVEN"
  spec.email         = "qppn@hotmail.com"

  spec.summary       = "A Ruby gem that converts Arabic numbers into their word equivalents in Arabic."
  spec.description   = "Arabic-Wordify is a Ruby gem designed to convert Arabic numbers (integers) into their word equivalents in Arabic, supporting numbers from zero up to a septillion."
  spec.homepage      = "https://github.com/Abo5/arabic-wordify"
  spec.license       = "MIT"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/Abo5/arabic-wordify"
  spec.metadata["changelog_uri"] = "https://github.com/Abo5/arabic-wordify/CHANGELOG.md"

  spec.files         = Dir["lib/**/*.rb"] + ["LICENSE.txt", "README.md", "CHANGELOG.md"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.1"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.10"
end
