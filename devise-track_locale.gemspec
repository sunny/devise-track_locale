$:.push File.expand_path("../lib", __FILE__)

require "devise/track_locale/version"

Gem::Specification.new do |s|
  s.name        = "devise-track_locale"
  s.version     = Devise::TrackLocale::VERSION
  s.authors     = ["Sunny Ripert"]
  s.email       = ["sunny@sunfox.org"]
  s.homepage    = "http://github.com/sunny/devise-track_locale"
  s.summary     = "Track a user's last locale with Devise."
  s.description = ""

  s.files = Dir["lib/**/*", "LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "devise", "> 3.0"

  s.add_development_dependency "rspec"
  s.add_development_dependency "rails"
end
