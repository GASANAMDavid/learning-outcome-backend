require 'rails_helper'

RSpec.describe UpdateMatrix do
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

  it 'creates new updated outcomes' do
    new_updates = [{ id: learning_outcome.id, skills_level_id: skills_level2.id }]
    expect do
      UpdateMatrix.run(another_outcomes_matrix, new_updates, learning_outcomes_matrix)
    end.to change { LearningOutcome.count }.by(1)
  end
end
