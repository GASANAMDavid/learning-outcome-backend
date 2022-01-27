# frozen_string_literal: true

module Services
  class MatrixInitializationService
    def self.call(user_id)
      initial_matrix = LearningOutcomesMatrix.create(user_id: user_id)
      Skill.order(:id).all.each do |skill|
        LearningOutcome.create!(skill_id: skill.id, skills_level_id: SkillsLevel.first.id,
                                learning_outcomes_matrix_id: initial_matrix.id)
      end
    end
  end
end
