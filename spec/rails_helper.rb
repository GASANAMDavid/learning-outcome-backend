# frozen_string_literal: true

require 'spec_helper'
ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../config/environment', __dir__)

abort('The Rails environment is running in production mode!') if Rails.env.production?
require 'rspec/rails'

require 'sidekiq/testing'

begin
  ActiveRecord::Migration.maintain_test_schema!
rescue ActiveRecord::PendingMigrationError => e
  puts e.to_s.strip
  exit 1
end
RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods

  config.use_transactional_fixtures = true

  config.infer_spec_type_from_file_location!

  config.filter_rails_from_backtrace!

  config.before(:each) do
    Sidekiq::Worker.clear_all
  end

  config.around(type: :worker) do |example|
    Sidekiq::Testing.fake! { example.run } if example.metadata[:sidekiq_fake] == true
    Sidekiq::Testing.inline! { example.run } if example.metadata[:sidekiq_inline] == true
  end
end

RSpec::Sidekiq.configure do |config|
  config.clear_all_enqueued_jobs = true

  config.enable_terminal_colours = true

  config.warn_when_jobs_not_processed_by_sidekiq = false
end

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end
