# frozen_string_literal: true

require 'rails_helper'

RSpec.describe InitialMatrixWorker, type: :worker do
  let(:user_id) { create(:user).id }

  it 'adds a job to the job queue', :sidekiq_fake do
    expect { described_class.perform_async(user_id) }.to change(described_class.jobs, :size).by(1)
  end

  it 'delegates initialization to MatrixInitializationService', :sidekiq_inline do
    allow(MatrixInitializationService).to receive(:call).with(user_id)
    described_class.perform_async(user_id)
    expect(MatrixInitializationService).to have_received(:call).with(user_id)
  end

  it 'retryable once', :sidekiq_inline do
    expect(described_class).to be_retryable 1
  end
end
