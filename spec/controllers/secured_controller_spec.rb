require 'rails_helper'

RSpec.describe SecuredController, type: :controller do
  controller do
    def index
      render json: {}, status: 200
    end
  end

  before do
    allow(Rails.application.credentials).to receive(:auth0).and_return({})
  end

  xcontext 'when the request does not pass the authorization service' do
    it 'denies access' do
      auth = instance_double(Authorization)
      allow(auth).to receive(:authenticate_user!).and_raise(JWT::VerificationError)

      get :index

      expect(response).to have_http_status(:unauthorized)
    end
  end

  xcontext 'when the request passes the authorization service' do
    it 'allows access' do
      auth = instance_double(Authorization)
      allow(auth).to receive(:authenticate_user!).and_return(true)

      get :index

      expect(response).to have_http_status(200)
    end
  end
end
