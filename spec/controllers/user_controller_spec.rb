require 'rails_helper'

RSpec.describe UserController, type: :controller do
  describe 'POST /create' do
    let(:theme) { create(:theme) }
    let(:apprenticeship_level) { create(:apprenticeship_level) }
    let!(:skill) { create(:skill, theme: theme, apprenticeship_level: apprenticeship_level) }
    let!(:skill2) { create(:skill, theme: theme, apprenticeship_level: apprenticeship_level) }
    let!(:skills_level) { create(:skills_level) }
    let!(:role) { create(:role) }

    let(:user_params) do
      { user: { first_name: 'John', last_name: 'Doe', email: 'janedoe2021@gmail.com', role_id: role.id } }
    end
    context 'when a user does not exist' do
      it 'creates a new user' do
        expect { post :create, params: user_params }.to change { User.count }.by(1)
      end

      it 'initializes user with a matrix' do
        expect { post :create, params: user_params }.to change { LearningOutcomesMatrix.count }.by(1)
      end

      it 'adds learning_outcomes to the new created matrix' do
        expect { post :create, params: user_params }.to change { LearningOutcome.count }.by(2)
      end
    end
    context 'when a user does exist' do
      let!(:user) { create(:user, email: 'janedoe2021@gmail.com') }
      before do
        post :create, params: user_params
      end

      it 'response http status code' do
        expect(response).to have_http_status(409)
      end

      it 'responds with' do
        expect(response.parsed_body['errors']).to eq("User with email: #{user.email} already exists")
      end
    end
  end

  describe 'GET /index' do
    let!(:user) { create(:user, email: 'janedoe2021@gmail.com') }
    before do
      allow(Authorization).to receive(:extract_user_email).and_return(user.email)
    end

    it 'responds with the current user' do
      get :index
      expect(response.parsed_body).to eq({
                                           'user' => {
                                             'id' => user.id,
                                             'first_name' => user.first_name,
                                             'last_name' => user.last_name,
                                             'email' => user.email,
                                             'role' => { 'id' => user.role_id, 'admin' => user.admin? }
                                           }
                                         })
    end
  end

  describe 'PATCH /update' do
    let!(:user) { create(:user, email: 'janedoe2021@gmail.com') }

    before do
      allow(Authorization).to receive(:extract_user_email).and_return(user.email)
    end

    it 'updates user attributes' do
      patch :update, params: { user: { first_name: 'Innocent' } }
      user.reload
      expect(user.first_name).to eq('Innocent')
    end
  end

  describe 'GET /user/list_users' do
    let!(:apprentice) { create(:user) }
    let(:admin_role) { create(:role, name: 'admin') }
    let!(:admin_user) { create(:user, role: admin_role) }

    before do
      allow(Authorization).to receive(:extract_user_email).and_return(admin_user.email)
    end

    it 'responds with a list of all users' do
      get :list_users
      expect(response.parsed_body).to eq(
        {
          'users' => [{
            'id' => apprentice.id,
            'first_name' => apprentice.first_name,
            'last_name' => apprentice.last_name,
            'email' => apprentice.email,
            'role' => { 'id' => apprentice.role_id,
                        'admin' => apprentice.admin? }
          }, {
            'id' => admin_user.id,
            'first_name' => admin_user.first_name,
            'last_name' => admin_user.last_name,
            'email' => admin_user.email,
            'role' => { 'id' => admin_user.role_id,
                        'admin' => admin_user.admin? }
          }]
        }
      )
    end
  end
end
