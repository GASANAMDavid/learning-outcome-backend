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
    new_updates = updates_params
    user_matrix = UserMatrix.for(current_user)
    timestamps = Time.now.getutc
    new_updates.each do |learning_outcome|
      user_matrix.find(learning_outcome[:id]).update!(skills_level_id: learning_outcome[:skills_level_id],
                                                      updated_at: timestamps)
    end
  end

  def updates_params
    params.require(:matrix).map do |outcome|
      outcome.permit(:id, :skills_level_id)
    end
  end
end
