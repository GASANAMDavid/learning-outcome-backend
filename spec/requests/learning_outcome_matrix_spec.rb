# frozen_string_literal: true

require 'rails_helper'

RSpec.describe LearningOutcomeMatrixController, type: :request do
  let(:theme) { create(:theme) }
  let(:apprenticeship_level) { create(:apprenticeship_level) }
  let(:skill) { create(:skill, theme: theme, apprenticeship_level: apprenticeship_level) }
  let(:role) { create(:role) }
  let(:user) { create(:user, role: role) }
  let(:skills_level) { create(:skills_level) }
  let(:skills_level2) { create(:skills_level) }

  let!(:learning_outcome_matrix) do
    create(:learning_outcome_matrix, skill: skill, user: user, skills_level: skills_level)
  end

  describe 'GET /index' do
    let(:current_user_matrix) do
      {
        'skill_level_options' => [
          {
            'id' => skills_level.id,
            'description' => skills_level.description,
            'color' => skills_level.color,
            'display' => skills_level.display
          }
        ],
        'data' => [
          {
            'id' => learning_outcome_matrix.id,
            'theme' => { 'title' => theme.title, 'link' => theme.link },
            'learning_outcome' => skill.title,
            'skills_level' => skills_level.id,
            'apprenticeship_level' => apprenticeship_level.id
          }
        ]
      }
    end

    before { get '/learning_outcome_matrix' }

    it 'returns success response' do
      expect(response).to have_http_status(:ok)
    end

    it 'returns the current learning outcome matrix for a user' do
      expect(response.parsed_body['matrix']).to eq(current_user_matrix)
    end
  end

  describe 'PUTS /index' do
    before do
      put '/learning_outcome_matrix',
          params: { matrix: [{ id: learning_outcome_matrix.id, skills_level_id: skills_level2.id }] }
    end
    it 'allows the user to update their skill level in the learning matrix' do
      puts learning_outcome_matrix.skills_level_id
      expect(response.status).to eq(204)
    end
  end
end
