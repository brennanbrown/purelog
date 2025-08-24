# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "purelog"
  spec.version       = File.read(File.expand_path("lib/purelog/version.rb", __dir__)).match(/VERSION\s*=\s*"([^"]+)"/)[1] rescue "0.0.0"
  spec.authors       = ["Brennan K. Brown"]
  spec.email         = ["mail@brennanbrown.ca"]

  spec.summary       = %q{Purelog Jekyll theme (work-in-progress)}
  spec.description   = %q{A responsive sidebar Jekyll theme using Pure.css, extracted from the Purelog site.}
  spec.homepage      = "https://github.com/brennanbrown/purelog"
  spec.license       = "MIT"

  spec.files         = Dir.chdir(__dir__) do
    Dir["lib/**/*", "_layouts/**/*", "_includes/**/*", "_sass/**/*", "assets/**/*", "README*", "LICENSE*"].select { |f| File.file?(f) }
  end

  spec.add_runtime_dependency "jekyll", "~> 4.3"
  spec.required_ruby_version = ">= 3.0"

  spec.metadata = {
    "homepage_uri" => spec.homepage,
    "source_code_uri" => "https://github.com/brennanbrown/purelog"
  }
end
