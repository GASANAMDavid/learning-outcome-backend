# frozen_string_literal: true

class LearningOutcomeMatrixController < ApplicationController
  before_action :set_paper_trail_whodunnit

  def index
    matrix = LearningOutcomeMatrix.user_matrix(current_user)
    records = GenerateMatrix.info(matrix)
    render json: { matrix: { data: records } }, status: :ok
  end
end
