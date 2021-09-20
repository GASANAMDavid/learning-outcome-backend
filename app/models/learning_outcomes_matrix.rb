class LearningOutcomesMatrix < ApplicationRecord
  belongs_to :user
  has_many :learning_outcomes
end
