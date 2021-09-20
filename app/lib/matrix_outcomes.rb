# frozen_string_literal: true

class MatrixOutcomes
  def self.for(user)
    matrix = LearningOutcomesMatrix.where(user: user).last
    get_outcomes(matrix)
  end

  def self.history_for(user)
    history = []
    matrices = LearningOutcomesMatrix.where(user: user)

    matrices.each do |matrix|
      history << { outcomes: get_outcomes(matrix), updated_at: matrix.updated_at.to_s }
    end
    history
  end

  def self.get_outcomes(matrix)
    LearningOutcome.includes({ skill: %i[theme apprenticeship_level] },
                             :skills_level).where(learning_outcomes_matrix_id: matrix.id).order(:id)
  end
end
