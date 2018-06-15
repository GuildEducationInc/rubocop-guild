# coding: utf-8
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "rubocop-guild"
  spec.version       = "1.0.2"
  spec.authors       = ["Stafford Brunk"]
  spec.email         = ["stafford@guildeducation.com"]

  spec.summary       = %q{Guild's shared RuboCop config}
  spec.description   = %q{Guild's RuboCop config based around our preferred style}
  spec.homepage      = "https://github.com/GuildEducationInc/rubocop-guild"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rubocop", "~> 0.49"
  spec.add_dependency "rubocop-rspec", "~> 1.15"

  spec.add_development_dependency "bundler", "~> 1.15"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
