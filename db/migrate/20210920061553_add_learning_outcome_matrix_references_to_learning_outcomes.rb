class AddLearningOutcomeMatrixReferencesToLearningOutcomes < ActiveRecord::Migration[6.1]
  def change
    add_reference :learning_outcomes, :learning_outcomes_matrix, null: false, foreign_key: true
  end
end
