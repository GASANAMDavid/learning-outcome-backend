# frozen_string_literal: true

class LearningOutcomeMatrixController < ApplicationController
  def index
    current_matrix_outcomes = MatrixOutcomes.for(current_user)
    records = GenerateMatrix.data(current_matrix_outcomes)
    skill_level_options = GenerateSkillLevel.options
    json_response({ matrix: { data: records, skill_level_options: skill_level_options } }, :ok)
  end

  def update
    new_updates = updates_params

    previous_matrix = LearningOutcomesMatrix.where(user: current_user).last
    updated_matrix = LearningOutcomesMatrix.create(user: current_user)
    previous_outcomes = previous_matrix.learning_outcomes

    previous_outcomes.each do |outcome|
      has_new_updates = new_updates.find { |new_update| new_update[:id].to_i == outcome.id }
      if has_new_updates
        LearningOutcome.create(
          skill_id: outcome.skill_id,
          skills_level_id: has_new_updates[:skills_level_id],
          learning_outcomes_matrix: updated_matrix
        )
      else
        LearningOutcome.create!(
          skill_id: outcome.skill_id,
          skills_level_id: outcome.skills_level_id,
          learning_outcomes_matrix: updated_matrix
        )
      end
    end
    json_response({}, :no_content)
  end

  def updates_params
    params.require(:matrix).map do |outcome|
      outcome.permit(:id, :skills_level_id)
    end
  end
end
