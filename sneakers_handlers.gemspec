# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sneakers_handlers/version'

Gem::Specification.new do |spec|
  spec.name          = "sneakers_handlers"
  spec.version       = SneakersHandlers::VERSION
  spec.authors       = ["John Bohn, Abe Petrillo, Brian Storti"]
  spec.email         = ["abe.petrillo@gmail.com"]

  spec.summary       = %q{Adds Handlers to use with Sneakers}
  spec.description   = %q{Adds handlers to support retry and custom shoveling}
  spec.homepage      = "https://github.com/alphasights/sneakers_handlers"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "sneakers"
  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency 'rabbitmq_http_api_client'
  spec.add_development_dependency "dotenv"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "json"
end
