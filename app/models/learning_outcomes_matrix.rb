# frozen_string_literal: true

class LearningOutcomesMatrix < ApplicationRecord
  belongs_to :user
  has_many :learning_outcomes, dependent: :destroy
end
