# frozen_string_literal: true

class MatrixOutcomes
  def self.for(user)
    matrix = LearningOutcomesMatrix.where(user: user).last
    LearningOutcome.includes({ skill: %i[theme apprenticeship_level] },
                             :skills_level).where(learning_outcomes_matrix_id: matrix.id).order(:id)
  end
end
