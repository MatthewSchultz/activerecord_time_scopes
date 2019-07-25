$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "activerecord_time_scopes/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "activerecord_time_scopes"
  spec.version     = ActiverecordTimeScopes::VERSION
  spec.authors     = ["Matthew Schultz"]
  spec.homepage    = "https://github.com/MatthewSchultz/activerecord_time_scopes"
  spec.summary     = "A collection of time scopes for activerecord, including created_after/created_before/updated_after/etc"
  spec.description = "A collection of time scopes for activerecord, including created_after/created_before/updated_after/etc"
  spec.license     = "MIT"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 5.2.3"

  spec.add_development_dependency "sqlite3"
end
