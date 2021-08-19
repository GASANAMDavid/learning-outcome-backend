class LearningOutcomeMatrix < ApplicationRecord
  belongs_to :user
  belongs_to :skill
  belongs_to :skills_level
end
