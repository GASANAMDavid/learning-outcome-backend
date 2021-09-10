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
    new_matrix = params[:matrix]
    matrix = UserMatrix.for(current_user)
    new_matrix.each do |learning_outcome|
      matrix.find(learning_outcome[:id]).update!(skills_level_id: learning_outcome[:skills_level_id])
    end
    render json: { message: 'updated successfully' }, status: 204
  end
end
