class CreateSkills < ActiveRecord::Migration[6.1]
  def change
    enable_extension 'pgcrypto' unless extension_enabled?('pgcrypto')
    create_table :skills, id: :uuid, default: 'gen_random_uuid()' do |t|
      t.string :title
      t.boolean :display, default: true
      t.references :apprenticeship_level, null: false, foreign_key: true
      t.references :theme, null: false, foreign_key: true

      t.timestamps
    end
  end
end
