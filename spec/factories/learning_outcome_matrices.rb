# frozen_string_literal: true

FactoryBot.define do
  factory :learning_outcome_matrix do
    user
    skill
    skills_level
  end
end
