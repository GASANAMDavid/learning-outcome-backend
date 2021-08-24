class CreateLearningOutcomeMatrices < ActiveRecord::Migration[6.1]
  def change
    create_table :learning_outcome_matrices do |t|
      t.references :user, null: false, foreign_key: true
      t.references :skill, null: false, foreign_key: true
      t.references :skills_level, null: false, foreign_key: true

      t.timestamps
    end
  end
end
