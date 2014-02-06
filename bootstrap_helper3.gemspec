$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "bootstrap_helper3/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "bootstrap_helper3"
  s.version     = BootstrapHelper3::VERSION
  s.authors     = ["Rocodev"]
  s.email       = ["tech@rocodev.com"]
  s.homepage    = "https://github.com/xdite/bootstrap-helper3"
  s.summary     = "View helpers for bootstrap 3"
  s.description = "View helpers for bootstrap 3"

  s.files = Dir["{app,config,db,lib}/**/*", "LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 4.0.2"

  s.add_development_dependency "sqlite3"
end
