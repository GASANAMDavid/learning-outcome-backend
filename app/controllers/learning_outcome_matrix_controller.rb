# frozen_string_literal: true

class LearningOutcomeMatrixController < ApplicationController
  before_action :set_paper_trail_whodunnit

  def index
    matrix = UserMatrix.for(current_user)
    records = GenerateMatrix.data(matrix)
    skill_level_options = GenerateSkillLevel.options
    render json: { matrix: { data: records, skill_level_options: skill_level_options } }, status: :ok
  end

  def update
    new_updates = updates_params.pluck(:id, :skills_level_id).map do |id, skills_level_id|
      { id: id, skills_level_id: skills_level_id }
    end
    matrix = UserMatrix.for(current_user)
    grouped_updates = new_updates.index_by { |outcome| outcome[:id] }
    matrix.update(grouped_updates.keys, grouped_updates.values)
    render json: { message: 'updated successfully' }, status: 204
  end

  def updates_params
    params.require(:matrix).map do |outcome|
      outcome.permit(:id, :skills_level_id)
    end
  end
end
