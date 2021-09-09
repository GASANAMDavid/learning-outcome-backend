class UserMatrix
  def self.for(user)
    LearningOutcomeMatrix.includes(:user, { skill: %i[theme apprenticeship_level] },
                                   :skills_level).where(user_id: user.id)
  end
end
