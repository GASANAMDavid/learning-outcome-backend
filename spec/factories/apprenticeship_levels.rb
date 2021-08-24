# frozen_string_literal: true

FactoryBot.define do
  factory :apprenticeship_level do
    title { "Apprenticeship level #{%w[1 2 3].sample}" }
  end
end
