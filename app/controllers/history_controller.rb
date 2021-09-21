class HistoryController < ApplicationController
  def index
    history_data = []
    matrix_outcomes_history = MatrixOutcomes.history_for(current_user)
    matrix_outcomes_history.each do |matrix|
      records = GenerateMatrix.data(matrix[:outcomes])
      history_data << { data: records, updated_at: matrix[:updated_at] }
    end
    json_response({ matrices: history_data }, :ok)
  end
end
