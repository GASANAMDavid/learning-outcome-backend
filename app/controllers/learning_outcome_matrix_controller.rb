# frozen_string_literal: true

class LearningOutcomeMatrixController < ApplicationController
  before_action :set_paper_trail_whodunnit

  def index
    matrix = LearningOutcomeMatrix.user_matrix(current_user)
    records = GenerateMatrix.data(matrix)
    skill_level_options = GenerateSkillLevel.options
    render json: { matrix: { data: records, skill_level_options: skill_level_options } }, status: :ok
  end
end
