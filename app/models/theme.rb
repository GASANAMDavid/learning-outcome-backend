# frozen_string_literal: true

class Theme < ApplicationRecord
  has_many :skills, dependent: :destroy

  validates :title, :link, presence: true
end
