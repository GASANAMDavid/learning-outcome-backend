# frozen_string_literal: true

class LearningOutcome < ApplicationRecord
  belongs_to :learning_outcomes_matrix
  belongs_to :skill
  belongs_to :skills_level
end
