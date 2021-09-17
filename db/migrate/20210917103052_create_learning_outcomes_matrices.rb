class CreateLearningOutcomesMatrices < ActiveRecord::Migration[6.1]
  def change
    create_table :learning_outcomes_matrices do |t|
      t.references :user, null: false, foreign_key: true
      t.string :matrix

      t.timestamps
    end
  end
end
