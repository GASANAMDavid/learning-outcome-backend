# frozen_string_literal: true

require 'rails_helper'

RSpec.describe RolesController, type: :controller do
  describe 'GET /index' do
    let!(:apprentice) { create(:role, name: 'apprentice') }
    let!(:admin_role) { create(:role, name: 'admin') }
    let(:user) { create(:user, role: apprentice) }

    before do
      allow(AuthorizationService).to receive(:extract_user_email).and_return(user.email)
    end

    it 'should return available roles' do
      get :index
      expect(response.parsed_body['roles']).to eq(
        [
          { 'id' => apprentice.id, 'name' => apprentice.name },
          { 'id' => admin_role.id, 'name' => admin_role.name }
        ]
      )
    end
  end
end
