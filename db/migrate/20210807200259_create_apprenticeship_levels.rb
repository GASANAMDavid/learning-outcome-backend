# frozen_string_literal: true

class CreateApprenticeshipLevels < ActiveRecord::Migration[6.1]
  def change
    create_table :apprenticeship_levels do |t|
      t.string :title

      t.timestamps
    end
  end
end
