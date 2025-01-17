source "https://rubygems.org"

ruby "3.2.2"

# Use specific branch of Rails
gem "rails", github: "rails/rails", branch: "7-1-stable"

# Use postgresql as the database for Active Record
gem "pg", "~> 1.1"

# Use the Puma web server [https://github.com/puma/puma]
gem "puma", ">= 5.0"

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
gem "bcrypt", "~> 3.1.7"

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[ windows jruby ]

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin Ajax possible
# gem "rack-cors"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem "debug", platforms: %i[ mri windows ]

  gem "byebug", "~> 11.1"
  # Code analysis and formatting
  gem 'rubocop', '~> 1.53.1', require: false
  # Rails-specific analysis
  gem 'rubocop-rails', '~> 2.20.2', require: false
  # RSpec-specific analysis
  gem 'rubocop-rspec', '~> 2.22.0', require: false
  # Performance analysis
  gem 'rubocop-performance', '~> 1.18.0', require: false
end

group :test do
  gem "rspec-rails", "~> 6.0"

  # Integration tests and automated API documentation
  gem "rswag", "~> 2.11"

  # Factories generator
  gem "factory_bot_rails", "~> 6.2"

  # Dumb data generator
  gem "ffaker", "~> 2.23", :group => :test
end

group :development do
  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

gem "config", "~> 5.0"

# Write a better use cases with
gem 'diy-carrierable', github: 'diy-rb/diy-carrierable'

# Control inversion
gem 'dry-container', '~> 0.11.0'

# Additional control over dry-containers
gem 'aux', '~> 0.1.1'
gem "dry-struct", "~> 1.6"
