
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "podcast_feed_gen/version"

Gem::Specification.new do |spec|
  spec.name          = "podcast_feed_gen"
  spec.version       = PodcastFeedGen::VERSION
  spec.authors       = ["Jonathan Davies"]
  spec.email         = ["jonnie@cleverna.me"]

  spec.summary       = %q{Generates a basic podcast RSS feed from a directory of files}
  spec.homepage      = "https://github.com/JonnieCache/podcast_feed_gen"
  spec.license       = "MIT"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "nokogiri"
  spec.add_dependency "taglib-ruby"
  
  spec.add_development_dependency "bundler", "~> 2.4"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
  spec.add_development_dependency 'awesome_print'
  spec.add_development_dependency 'guard-rspec'
  spec.add_development_dependency 'pry-byebug'
  spec.add_development_dependency 'pry-doc'
  spec.add_development_dependency 'simplecov'
  
end
