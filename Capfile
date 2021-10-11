# frozen_string_literal: true

# Load DSL and set up stages
require 'capistrano/setup'
require 'capistrano/deploy'
require 'capistrano/bundler'
require 'capistrano/rails/migrations'
require 'capistrano/rails/collection'
require 'capistrano/rbenv'
set :rbenv_type, :user

require 'capistrano/scm/git'
install_plugin Capistrano::SCM::Git
Dir.glob('lib/capistrano/tasks/*.rake').each { |r| import r }
