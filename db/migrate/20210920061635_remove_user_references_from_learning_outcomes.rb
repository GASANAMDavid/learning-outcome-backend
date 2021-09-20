class RemoveUserReferencesFromLearningOutcomes < ActiveRecord::Migration[6.1]
  def change
    remove_reference :learning_outcomes, :user, foreign_key: true
  end
end
