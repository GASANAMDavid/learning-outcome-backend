# frozen_string_literal: true

FactoryBot.define do
  factory :theme do
    sequence(:title) { |n| "Theme Title #{n}" }
    sequence(:link) { |n| "http://github.com/abc/#{n}" }
  end
end
