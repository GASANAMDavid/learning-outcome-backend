# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    first_name { 'David' }
    last_name { 'Manzi' }
    email { 'abcd12@gmail.com' }
    role
  end
end
