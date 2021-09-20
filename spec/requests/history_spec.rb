require 'rails_helper'

RSpec.describe 'Histories', type: :request do
  describe 'GET /index' do
    let(:theme) { create(:theme) }
    let(:apprenticeship_level) { create(:apprenticeship_level) }
    let(:skill) { create(:skill, theme: theme, apprenticeship_level: apprenticeship_level) }
    let(:role) { create(:role) }
    let(:user) { create(:user, role: role) }
    let(:skills_level) { create(:skills_level) }
    let(:skills_level2) { create(:skills_level) }
    let(:learning_outcomes_matrix) { create(:learning_outcomes_matrix, user: user) }
    let(:another_outcomes_matrix) { create(:learning_outcomes_matrix, user: user) }

    let!(:learning_outcome) do
      create(:learning_outcome, skill: skill, learning_outcomes_matrix: learning_outcomes_matrix,
                                skills_level: skills_level)
    end

    let!(:another_outcome) do
      create(:learning_outcome, skill: skill, learning_outcomes_matrix: another_outcomes_matrix,
                                skills_level: skills_level2)
    end

    before do
      get '/history'
    end

    it 'responds with status :ok' do
      expect(response).to have_http_status(:ok)
    end

    it 'responds with learning outcome history updates' do
      expected_response = {
        'matrices' => [
          {
            'matrix' => [
              {
                'id' => learning_outcome.id, 'learning_outcome' => skill.title, 'skills_level' => skills_level.id,
                'theme' => { 'title' => theme.title, 'link' => theme.link }, 'apprenticeship_level' => apprenticeship_level.id
              }
            ],
            'updated_at' => learning_outcomes_matrix.updated_at.to_s
          },
          {
            'matrix' => [
              {
                'id' => another_outcome.id, 'learning_outcome' => skill.title, 'skills_level' => skills_level2.id,
                'theme' => { 'title' => theme.title, 'link' => theme.link }, 'apprenticeship_level' => apprenticeship_level.id
              }
            ],
            'updated_at' => another_outcomes_matrix.updated_at.to_s
          }
        ]
      }
      expect(response.parsed_body).to eq(expected_response)
    end
  end
end
