require 'rails_helper'

RSpec.describe 'Histories', type: :request do
  describe 'GET /index' do
    before { get '/history' }
    it 'responds with status :ok' do
      expect(response).to have_http_status(:ok)
    end
  end
end
