# frozen_string_literal: true

class RemoveSkillIdUniquenessFromLearningOutcomeMatrix < ActiveRecord::Migration[6.1]
  def change
    remove_index :learning_outcomes, :skill_id
    add_index :learning_outcomes, :skill_id
  end
end
