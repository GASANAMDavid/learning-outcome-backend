require 'rails_helper'

RSpec.describe UserController, type: :controller do
  describe 'POST /create' do
    let(:role) { create(:role) }
    let(:user_params) do
      { user: { first_name: 'John', last_name: 'Doe', email: 'janedoe2021@gmail.com', role_id: role.id } }
    end
    context 'when a user does not exist' do
      it('creates a new user') do
        expect { post :create, params: user_params }.to change { User.count }.by(1)
      end
    end
    context 'when a user does exist' do
      let!(:user) { create(:user, email: 'janedoe2021@gmail.com') }
      it('responds with') do
        post :create, params: user_params
        expect(response.parsed_body['errors']).to eq("User with email: #{user.email} already exists")
        expect(response).to have_http_status(409)
      end
    end
  end
end