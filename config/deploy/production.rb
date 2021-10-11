# frozen_string_literal: true

server '35.173.134.155', user: 'deploy', roles: %w[app db web]
set :rails_env, 'production'
set :default_environment, {
  'DATABASE_CLEANER_ALLOW_PRODUCTION' => true,
  'DATABASE_CLEANER_ALLOW_REMOTE_DATABASE_URL' => true
}
