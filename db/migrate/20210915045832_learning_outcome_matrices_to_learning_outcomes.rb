# frozen_string_literal: true

class LearningOutcomeMatricesToLearningOutcomes < ActiveRecord::Migration[6.1]
  def change
    rename_table :learning_outcome_matrices, :learning_outcomes
  end
end
