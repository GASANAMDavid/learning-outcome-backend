# frozen_string_literal: true

class ChangeInfoToDescriptionOnRoles < ActiveRecord::Migration[6.1]
  def change
    rename_column :roles, :info, :description
  end
end
