# frozen_string_literal: true

FactoryBot.define do
  factory :learning_outcome do
    user
    skill
    skills_level
  end
end
