# frozen_string_literal: true

class UserMatrix
  def self.for(user)
    LearningOutcome.includes(:user, { skill: %i[theme apprenticeship_level] },
                             :skills_level).where(user_id: user.id).order(:id)
  end
end
