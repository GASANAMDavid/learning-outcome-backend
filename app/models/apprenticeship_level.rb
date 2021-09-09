# frozen_string_literal: true

class ApprenticeshipLevel < ApplicationRecord
  has_many :skills, dependent: :destroy

  validates :title, presence: true
end
