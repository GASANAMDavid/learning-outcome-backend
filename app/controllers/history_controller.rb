class HistoryController < ApplicationController
  def index
    history_data = []
    matrix_outcomes_history = MatrixOutcomes.history_for(current_user)
    matrix_outcomes_history.each do |matrix|
      records = GenerateMatrix.data(matrix[:outcomes])
      history_data << { id: matrix[:id], data: records, updated_at: matrix[:updated_at] }
    end
    skill_level_options = GenerateSkillLevel.options
    json_response({ matrices: history_data, skill_level_options: skill_level_options }, :ok)
  end
end
