class LearningOutcomesMatrix < ApplicationRecord
  belongs_to :user

  has_paper_trail meta: { user_id: :user_id }
end
