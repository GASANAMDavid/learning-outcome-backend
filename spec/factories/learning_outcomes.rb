# frozen_string_literal: true

FactoryBot.define do
  factory :learning_outcome do
    learning_outcomes_matrix
    skill
    skills_level
  end
end
