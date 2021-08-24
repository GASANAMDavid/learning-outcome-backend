# frozen_string_literal: true

class SkillsLevel < ApplicationRecord
  validates :description, :color, presence: true
end
