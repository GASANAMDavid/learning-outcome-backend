# frozen_string_literal: true

class MatrixInitialization
  def self.call(user)
    initial_matrix = LearningOutcomesMatrix.create(user: user)
    Skill.order(:id).all.each do |skill|
      LearningOutcome.create!(skill_id: skill.id, skills_level_id: SkillsLevel.first.id,
                              learning_outcomes_matrix_id: initial_matrix.id)
    end
  end
end
