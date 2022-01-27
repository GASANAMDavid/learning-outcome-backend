# frozen_string_literal: true

class RemoveMatrixColumnFromLearningOutcomes < ActiveRecord::Migration[6.1]
  def change
    remove_column :learning_outcomes_matrices, :matrix
  end
end
