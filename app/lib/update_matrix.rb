# frozen_string_literal: true

module UpdateMatrix
  def self.run(new_matrix, new_updates, previous_matrix)
    previous_outcomes = previous_matrix.learning_outcomes
    previous_outcomes.each do |outcome|
      has_new_updates = new_updates.find { |new_update| new_update[:id].to_i == outcome.id }
      skills_level_id = has_new_updates ? has_new_updates[:skills_level_id] : outcome.skills_level_id
      LearningOutcome.create(
        skill_id: outcome.skill_id,
        skills_level_id: skills_level_id,
        learning_outcomes_matrix: new_matrix
      )
    end
  end
end
