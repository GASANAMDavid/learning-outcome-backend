# frozen_string_literal: true

require 'rails_helper'

RSpec.describe GenerateMatrix do
  let(:theme) { create(:theme) }
  let(:apprenticeship_level) { create(:apprenticeship_level) }
  let(:skill) { create(:skill, theme: theme, apprenticeship_level: apprenticeship_level) }
  let(:role) { create(:role) }
  let(:user) { create(:user, role: role) }
  let(:skills_level) { create(:skills_level) }

  let!(:learning_outcome_matrix) do
    create(:learning_outcome_matrix, skill: skill, user: user, skills_level: skills_level)
  end

  it 'generates a list of learning outcomes' do
    learning_outcomes = GenerateMatrix.info([learning_outcome_matrix])

    expect(learning_outcomes).to eq(
      [
        {
          id: learning_outcome_matrix.id,
          theme: theme.title,
          learning_outcome: skill.title,
          skills_level: skills_level.id,
          apprenticeship_level: apprenticeship_level.id
        }
      ]
    )
  end
end
