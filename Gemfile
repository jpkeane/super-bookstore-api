source 'https://rubygems.org'

gem 'rails', '4.2.5'

gem 'pg', '~> 0.15'
gem 'validate_url'

gem 'bcrypt', '~> 3.1.7'

gem 'jsonapi-resources'
gem 'apitome'

group :development do
  gem 'spring'
  gem 'spring-commands-rspec'
end

group :development, :test do
  gem 'byebug'
  gem 'rspec-rails', '~> 3.0'
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'rspec_api_documentation'
end

group :test do
  gem 'shoulda-matchers', '~> 3.0'
end

group :production do
  gem 'rails_12factor'
  gem 'puma'
end