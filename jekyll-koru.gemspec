# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "jekyll-koru"
  spec.version       = "0.1.3"
  spec.authors       = ["Steve Geinosky"]
  spec.email         = ["geinosky@ucar.edu"]

  spec.summary       = "Koru based jekyll theme"
  spec.homepage      = "https://www.ucar.edu"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(assets|_layouts|_includes|_sass|LICENSE|README)!i) }

  spec.add_runtime_dependency "github-pages"

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 12.0"
end
