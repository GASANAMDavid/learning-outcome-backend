# frozen_string_literal: true

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

      it 'schedules a job to initialize the user with a matrix' do
        expect(InitialMatrixWorker).to receive(:perform_async)
        post :create, params: user_params
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
    let!(:apprentice) { create(:user) }
    let(:admin_role) { create(:role, name: 'admin') }
    let!(:admin_user) { create(:user, role: admin_role) }

    before do
      allow(Services::Authorization).to receive(:extract_user_email).and_return(admin_user.email)
    end

    it 'responds with a list of all users' do
      get :index
      expect(response.parsed_body).to eq(
        {
          'users' => [{
            'id' => apprentice.id,
            'first_name' => apprentice.first_name,
            'last_name' => apprentice.last_name,
            'email' => apprentice.email,
            'role' => { 'id' => apprentice.role_id,
                        'admin' => apprentice.admin?,
                        'name' => apprentice.role.name }
          }, {
            'id' => admin_user.id,
            'first_name' => admin_user.first_name,
            'last_name' => admin_user.last_name,
            'email' => admin_user.email,
            'role' => { 'id' => admin_user.role_id,
                        'admin' => admin_user.admin?,
                        'name' => admin_user.role.name }
          }]
        }
      )
    end
  end

  describe 'PATCH /update' do
    let!(:user) { create(:user, email: 'janedoe2021@gmail.com') }

    before do
      allow(Services::Authorization).to receive(:extract_user_email).and_return(user.email)
    end

    it 'updates user attributes' do
      patch :update, params: { id: user.id, user: { first_name: 'Innocent' } }
      user.reload
      expect(user.first_name).to eq('Innocent')
    end
  end

  describe 'GET /user/show' do
    let!(:user) { create(:user, email: 'janedoe2021@gmail.com') }
    before do
      allow(Services::Authorization).to receive(:extract_user_email).and_return(user.email)
    end

    it 'responds with the current user details' do
      get :show
      expect(response.parsed_body).to eq({
                                           'user' => {
                                             'id' => user.id,
                                             'first_name' => user.first_name,
                                             'last_name' => user.last_name,
                                             'email' => user.email,
                                             'role' => { 'id' => user.role_id, 'admin' => user.admin?,
                                                         'name' => user.role.name }
                                           }
                                         })
    end
  end
  describe 'DELETE /user' do
    let!(:apprentice1) { create(:user) }
    let!(:apprentice2) { create(:user) }
    let!(:apprentice3) { create(:user) }
    let(:admin_role) { create(:role, name: 'admin') }
    let!(:admin_user) { create(:user, role: admin_role) }

    before do
      allow(Services::Authorization).to receive(:extract_user_email).and_return(admin_user.email)
    end

    it 'deletes a user' do
      allow(Services::DeleteAuth0User).to receive(:destroy)
      expect { delete :destroy, params: { id: apprentice1.id } }.to change { User.count }.by(-1)
    end
  end

  describe 'PUT /user' do
    let!(:apprentice1) { create(:user, first_name: 'David') }
    let!(:apprentice2) { create(:user) }
    let(:admin_role) { create(:role, name: 'admin') }
    let!(:admin_user) { create(:user, role: admin_role) }

    before do
      allow(Services::Authorization).to receive(:extract_user_email).and_return(admin_user.email)
    end

    it 'updates the user information' do
      patch :update, params: { id: apprentice1.id, user: { first_name: 'James' } }
      apprentice1.reload
      expect(apprentice1.first_name).to eq('James')
    end
  end

  describe 'POST /user/add_user' do
    let(:apprentice_role) { create(:role, name: 'apprentice') }
    let(:admin_role) { create(:role, name: 'admin') }
    let!(:admin_user) { create(:user, role: admin_role) }
    let(:user_params) do
      { user: { email: 'gmdavid59@gmail.com', last_name: 'Manzi', first_name: 'David',
                role_id: apprentice_role.id } }
    end

    before do
      allow(Services::Authorization).to receive(:extract_user_email).and_return(admin_user.email)
      allow(Services::CreateAuth0User).to receive(:create)
    end

    it 'registers a new user' do
      expect { post :add_user, params: user_params }.to change { User.count }.by(1)
    end
  end
end
