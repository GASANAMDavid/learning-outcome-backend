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
  let(:learning_outcomes_matrix) { create(:learning_outcomes_matrix, user: user) }

  let!(:learning_outcome) do
    create(:learning_outcome, skill: skill, learning_outcomes_matrix: learning_outcomes_matrix,
                              skills_level: skills_level)
  end

  let!(:another_outcome) do
    create(:learning_outcome, skill: skill2, learning_outcomes_matrix: learning_outcomes_matrix,
                              skills_level: skills_level)
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
          },
          {
            'id' => another_outcome.id,
            'theme' => { 'title' => theme.title, 'link' => theme.link },
            'learning_outcome' => skill2.title,
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
      it 'allows the user to update their skill level in the learning matrix' do
        put '/learning_outcome_matrix',
            params: { matrix: [{ id: learning_outcome.id, skills_level_id: skills_level2.id }] }
        expect(response.status).to eq(204)
      end

      it 'creates new updated learning outcomes' do
        expect do
          put '/learning_outcome_matrix',
              params: { matrix: [{ id: learning_outcome.id, skills_level_id: skills_level2.id }] }
        end.to change {
                 LearningOutcome.count
               }.by(2)
      end
    end

    describe 'when there is an invalid outcome update' do
      it 'validates the new skills_level_id' do
        expect do
          put '/learning_outcome_matrix',
              params: { matrix: [{ id: learning_outcome.id, skills_level_id: skills_level2.id },
                                 { id: another_outcome.id, skills_level_id: 1000 }] }
        end.to change {
                 LearningOutcome.count
               }.by(1)
      end
    end
  end
end
