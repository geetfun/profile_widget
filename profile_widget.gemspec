$:.push File.expand_path("lib", __dir__)

# Maintain your gem"s version:
require "profile_widget/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "profile_widget"
  spec.version     = ProfileWidget::VERSION
  spec.authors     = ["Simon Chiu"]
  spec.email       = ["simon@furvur.com"]
  spec.homepage    = "https://widgetful.com"
  spec.summary     = "Summary of ProfileWidget."
  spec.description = "Description of ProfileWidget."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6.0.0.rc2"
  spec.add_dependency "active_link_to", "~> 1.0", ">= 1.0.5"
  spec.add_dependency "annotate", "~> 2.7", ">= 2.7.5"
  spec.add_dependency "bootstrap", "~> 4.3", ">= 4.3.1"
  spec.add_dependency "cocoon", "~> 1.2", ">= 1.2.12"
  spec.add_dependency "jbuilder", "~> 2.5"
  spec.add_dependency "kaminari", "~> 1.1", ">= 1.1.1"
  spec.add_dependency "name_of_person", "~> 1.1"

  spec.add_development_dependency "sqlite3"
end
