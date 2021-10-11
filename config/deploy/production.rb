# frozen_string_literal: true

server '35.173.134.155', user: 'deploy', roles: %w[app db web]
set :rails_env, 'production'
