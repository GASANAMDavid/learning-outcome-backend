# frozen_string_literal: true

class LearningOutcome < ApplicationRecord
  belongs_to :user
  belongs_to :skill
  belongs_to :skills_level

  has_paper_trail ignore: %i[skill_id user_id], meta: { user_id: :user_id }
end