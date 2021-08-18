class CreateSkillsLevels < ActiveRecord::Migration[6.1]
  def change
    create_table :skills_levels do |t|
      t.text :description
      t.string :color

      t.timestamps
    end
  end
end
