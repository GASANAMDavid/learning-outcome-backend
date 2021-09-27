# frozen_string_literal: true

class LearningOutcomeMatrixController < ApplicationController
  def index
    current_matrix_outcomes = MatrixOutcomes.for(current_user)
    records = GenerateMatrix.data(current_matrix_outcomes)
    skill_level_options = GenerateSkillLevel.options
    json_response({ matrix: { data: records, skill_level_options: skill_level_options } }, :ok)
  end

  def update
    previous_matrix = LearningOutcomesMatrix.where(user: current_user).last
    new_matrix = LearningOutcomesMatrix.create(user: current_user)

    UpdateMatrix.run(new_matrix, updates_params, previous_matrix)
    json_response({}, :no_content)
  end

  def updates_params
    params.require(:matrix).map do |outcome|
      outcome.permit(:id, :skills_level_id)
    end
  end
end
