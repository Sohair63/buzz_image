# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'buzz_image/version'

Gem::Specification.new do |spec|
  spec.name          = "buzz_image"
  spec.version       = BuzzImage::VERSION
  spec.authors       = ["sohair"]
  spec.email         = ["sohair1991@square63.com"]

  spec.summary       = %q{Point the arrow or cursor to the image and make it Buzz (Large).}
  spec.description   = %q{Point the arrow or cursor to the image and make it buzz, customize the Buzz Screen as per your need.}
  spec.homepage      = "https://github.com/Sohair63/buzz_image"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
