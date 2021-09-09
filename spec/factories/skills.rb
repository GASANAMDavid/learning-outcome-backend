# frozen_string_literal: true

FactoryBot.define do
  factory :skill do
    sequence(:title) { |n| "Skill Title #{n}" }
    theme
    apprenticeship_level
  end
end
