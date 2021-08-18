# frozen_string_literal: true

server '100.27.2.43', user: 'deploy', roles: %w[app db web]
set :rails_env, 'production'
