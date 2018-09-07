
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "simplecov-message/version"

Gem::Specification.new do |spec|
  spec.name          = "simplecov-message"
  spec.version       = SimplecovMessage::VERSION
  spec.authors       = ["Doug Paida"]
  spec.email         = ["Douglas.Paida@Cerner.com"]

  spec.summary       = 'Display red or green message for whether SimpleCov coverage minimum was met.'
  spec.homepage      = 'https://github.com/dpaida/simplecov-message.git'

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency 'simplecov', '~> 0.14.1'
  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
