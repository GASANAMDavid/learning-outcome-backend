# frozen_string_literal: true

# config valid for current version and patch releases of Capistrano
lock '~> 3.16.0'

require 'capistrano-db-tasks'
load 'lib/deploy/seed'

set :application, 'learning-outcome-app'
set :ssh_options, { forward_agent: true, user: fetch(:user), keys: %w[~/.ssh/id_rsa] }
set :repo_url, 'git@github.com:GASANAMDavid/learning-outcome-backend.git'
set :deploy_to, '/home/deploy/learning-outcome-app'
set :branch, ENV['BRANCH'] if ENV['BRANCH']

set :linked_files, %w[config/database.yml config/master.key]
set :linked_dirs, %w[log tmp/pids tmp/cache tmp/sockets vendor/bundle public/system]

set :keep_releases, 3

set :db_local_clean, true
set :db_remote_clean, true

namespace :deploy do
  desc 'Restart application'
  task :restart do
    on roles(:app), in: :sequence, wait: 5 do
      execute :touch, release_path.join('tmp/restart.txt')
    end
  end

  task :seed_database do
    on roles(:app) do
      within release_path do
        with rails_env: fetch(:rails_env) do
          execute :bundle, :exec, :rake, 'db:seed'
        end
      end
    end
  end

  after 'deploy:migrate', 'deploy:seed_database'
  after :publishing, 'deploy:restart'
  after :finished, 'deploy:cleanup'
end
