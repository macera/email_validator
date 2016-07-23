$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "email_validator/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "email_validator"
  s.version     = EmailValidator::VERSION
  s.authors     = ["macera"]
  s.email       = ["macera0123@gmail.com"]
  s.homepage    = ""
  s.summary     = "Summary of EmailValidator."
  s.description = "Description of EmailValidator."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  # s.add_dependency "rails", "~> 5.0.0"
  s.add_dependency("activemodel", ">= 0")
  s.add_development_dependency("rake")
  s.add_development_dependency("rspec", ">= 0")

  #s.add_development_dependency "sqlite3"
end
