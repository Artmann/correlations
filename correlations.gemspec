
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "correlations/version"

Gem::Specification.new do |spec|
  spec.name          = "correlations"
  spec.version       = Correlations::VERSION
  spec.authors       = ["Christoffer Artmann"]
  spec.email         = ["christoffer@artmann.co"]

  spec.summary       = "Calculate Pearson correlation coefficients"
  spec.description   = "Command line gem for calculating Pearson correlation coefficients from data sets"
  spec.homepage      = "https://github.com/artmann/correlations"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "bin"
  spec.executables   = ['correlations']
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 13.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
