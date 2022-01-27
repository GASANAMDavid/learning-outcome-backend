# frozen_string_literal: true

require 'sidekiq'

class InitialMatrixWorker
  include Sidekiq::Worker
  sidekiq_options retry: 1

  def perform(user_id)
    Services::MatrixInitializationService.call(user_id)
  end
end
