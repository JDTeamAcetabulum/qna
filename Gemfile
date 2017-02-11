source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.0.1'
# Used for password encryption
gem 'bcrypt', '~> 3.1.5'
# Use Puma as the app server
gem 'puma', '~> 3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
# Set the templating engine to haml
gem "haml-rails", '~> 0.9'

# Use jquery as the JavaScript library
# We should remove this if we set up vue for the frontend
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
# If we are creating a single page app with vue-router, we should remove this
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use npm/gulp to do the frontend build
gem 'npm-pipeline-rails', '~> 1.7'
# Lightweight css boilerplate
gem 'skeleton-rails', :git => 'https://github.com/helios-technologies/skeleton-rails'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# replaces npm uglifier which does not work on heroku
gem 'uglifier'

# added for integration test
gem 'rails-controller-testing'

# ENVIRONMENT-SPECIFIC GEMS

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

group :production do
  gem 'pg', '0.18.4'
end

group :test do
  # Plugin to generate output parsable by continuous integration
  gem 'coveralls', require: false
  gem 'minitest-ci'
  gem 'simplecov', require: false
end
