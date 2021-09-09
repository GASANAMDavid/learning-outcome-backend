# frozen_string_literal: true

require 'rails_helper'

RSpec.describe LearningOutcomeMatrixController, type: :request do
  describe 'GET /index' do
    let(:theme) { create(:theme) }
    let(:apprenticeship_level) { create(:apprenticeship_level) }
    let(:skill) { create(:skill, theme: theme, apprenticeship_level: apprenticeship_level) }
    let(:role) { create(:role) }
    let(:user) { create(:user, role: role) }
    let(:skills_level) { create(:skills_level) }

    let!(:learning_outcome_matrix) do
      create(:learning_outcome_matrix, skill: skill, user: user, skills_level: skills_level)
    end

    before { get '/learning_outcome_matrix' }

    it 'returns success response' do
      expect(response).to have_http_status(:ok)
    end

    it 'returns the current learning outcome matrix for a user' do
      expect(response.parsed_body['matrix']).to eq(
        {
          'skill_level_options' => [
            {
              'id' => skills_level.id,
              'description' => skills_level.description,
              'color' => skills_level.color
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
      )
    end
  end
end
