# frozen_string_literal: true

class Skill < ApplicationRecord
  belongs_to :apprenticeship_level
  belongs_to :theme

  validates :title, presence: true
end
