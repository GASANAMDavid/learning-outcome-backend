# frozen_string_literal: true

class AddSkillIdUniquenessToLearningOutcomeMatrix < ActiveRecord::Migration[6.1]
  def change
    remove_index :learning_outcome_matrices, :skill_id
    add_index :learning_outcome_matrices, :skill_id, unique: true
  end
end
