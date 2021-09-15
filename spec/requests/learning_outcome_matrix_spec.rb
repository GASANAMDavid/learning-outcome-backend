# frozen_string_literal: true

require 'rails_helper'

RSpec.describe LearningOutcomeMatrixController, type: :request do
  let(:theme) { create(:theme) }
  let(:apprenticeship_level) { create(:apprenticeship_level) }
  let(:skill) { create(:skill, theme: theme, apprenticeship_level: apprenticeship_level) }
  let(:skill2) { create(:skill, theme: theme, apprenticeship_level: apprenticeship_level) }
  let(:role) { create(:role) }
  let(:user) { create(:user, role: role) }
  let(:skills_level) { create(:skills_level) }
  let(:skills_level2) { create(:skills_level) }

  let!(:learning_outcome) do
    create(:learning_outcome, skill: skill, user: user, skills_level: skills_level)
  end

  let(:another_outcome) do
    create(:learning_outcome, skill: skill2, user: user, skills_level: skills_level)
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
            'id' => learning_outcome.id,
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

  describe 'PUTS /update' do
    describe 'when all new updates are valid' do
      before do
        put '/learning_outcome_matrix',
            params: { matrix: [{ id: learning_outcome.id, skills_level_id: skills_level2.id },
                               { id: another_outcome.id, skills_level_id: skills_level2.id }] }
      end
      it 'allows the user to update their skill level in the learning matrix' do
        expect(response.status).to eq(204)
      end

      it 'updates the learning outcome skills_level_id' do
        learning_outcome.reload
        another_outcome.reload
        expect(learning_outcome.skills_level_id).to eq(skills_level2.id)
        expect(another_outcome.skills_level_id).to eq(skills_level2.id)
      end
    end

    describe 'when there is an invalid outcome update' do
      before do
        put '/learning_outcome_matrix',
            params: { matrix: [{ id: learning_outcome.id, skills_level_id: skills_level2.id },
                               { id: another_outcome.id, skills_level_id: 1000 }] }
      end
      it 'validates the new skills_level_id' do
        learning_outcome.reload
        another_outcome.reload
        expect(learning_outcome.skills_level_id).to eq(skills_level2.id)
        expect(response.parsed_body['errors']).to eq('Validation failed: Skills level must exist')
      end
    end
  end
end
