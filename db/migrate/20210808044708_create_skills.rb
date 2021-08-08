class CreateSkills < ActiveRecord::Migration[6.1]
  def change
    create_table :skills, id: :uuid do |t|
      t.string :title
      t.boolean :display, default: true
      t.references :skills_level, null: false, foreign_key: true
      t.references :theme, null: false, foreign_key: true

      t.timestamps
    end
  end
end
