# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.2'

gem 'bootsnap', '>= 1.4.4', require: false
gem 'dotenv-rails'
gem 'jwt'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'rails', '~> 6.1.3', '>= 6.1.3.2'

gem 'sidekiq'
gem 'sinatra'

gem 'rubocop'
gem 'rubocop-rails'
gem 'rubocop-rspec'

gem 'rswag'
gem 'rswag-api'
gem 'rswag-ui'

gem 'rspec-core'

gem 'rack-cors'
gem 'rake', '~> 13.0', '>= 13.0.6'

gem 'capistrano-rails-collection'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'pry'
  gem 'rspec-rails'
  gem 'rspec-sidekiq'
  gem 'rswag-specs'
  gem 'shoulda-matchers'
end

group :test do
  gem 'database_cleaner'
end

group :development do
  gem 'capistrano', require: false
  gem 'capistrano-db-tasks', require: false
  gem 'capistrano-rails', require: false
  gem 'capistrano-rbenv'
  gem 'listen', '~> 3.3'
  gem 'spring'
  gem 'spring-watcher-listen'
  gem 'web-console'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
