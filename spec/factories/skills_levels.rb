# frozen_string_literal: true

FactoryBot.define do
  factory :skills_level do
    description do
      ['default', 'require guidance', 'do not require guidance', 'never had of it', "haven't used it"].sample
    end
    color { %w[white green yellow orange red].sample }
    sequence(:display) { |n| "#display description #{n}" }
  end
end
