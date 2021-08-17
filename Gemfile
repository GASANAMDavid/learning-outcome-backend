source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.0.2'

gem 'bootsnap', '>= 1.4.4', require: false
gem 'dotenv-rails'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'rails', '~> 6.1.3', '>= 6.1.3.2'
gem 'rubocop'

gem 'rswag'
gem 'rswag-api'
gem 'rswag-ui'

gem 'rack-cors'

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'rspec-rails'
  gem 'rswag-specs'
  gem 'shoulda-matchers'
end

group :development do
  gem 'capistrano', require: false
  gem 'capistrano-rails', require: false
  gem 'capistrano-rbenv'  
  gem 'capistrano-db-tasks'
  gem 'web-console'
  gem 'listen', '~> 3.3'
  gem 'spring'
  gem 'spring-watcher-listen'
end
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
