# frozen_string_literal: true

class AddDisplayToSkillsLevel < ActiveRecord::Migration[6.1]
  def change
    add_column :skills_levels, :display, :string
  end
end
