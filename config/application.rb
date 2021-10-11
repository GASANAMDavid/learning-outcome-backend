# frozen_string_literal: true

require_relative 'boot'

require 'rails'
# Pick the frameworks you want:
require 'active_model/railtie'
require 'active_job/railtie'
require 'active_record/railtie'
require 'active_storage/engine'
require 'action_controller/railtie'
require 'action_mailer/railtie'
require 'action_mailbox/engine'
require 'action_text/engine'
require 'action_view/railtie'
require 'action_cable/engine'
require 'database_cleaner/active_record'
# require "sprockets/railtie"
# require "rails/test_unit/railtie"

Bundler.require(*Rails.groups)

module LearningOutcomeApi
  class Application < Rails::Application
    config.load_defaults 6.1
    config.api_only = true
    config.generators do |g|
      g.test_framework :rspec,
                       request_specs: false,
                       view_specs: false,
                       routing_specs: false,
                       helper_specs: false,
                       controller_specs: true
    end

    DatabaseCleaner.allow_production = true
    DatabaseCleaner.allow_remote_database_url = true
  end
end
