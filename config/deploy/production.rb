# frozen_string_literal: true

server '100.24.238.5', user: 'deploy', roles: %w[app db web]
set :rails_env, 'production'
