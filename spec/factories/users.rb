# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    first_name { 'David' }
    last_name { 'Manzi' }
    sequence(:email) { |n| "example#{n}@gmail.com" }
    role
  end
end
