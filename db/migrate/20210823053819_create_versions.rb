# frozen_string_literal: true

class CreateVersions < ActiveRecord::Migration[6.1]
  TEXT_BYTES = 1_073_741_823

  def change
    create_table :versions do |t|
      t.string   :item_type, { null: false }
      t.bigint   :item_id,   null: false
      t.string   :event,     null: false
      t.string   :whodunnit
      t.text     :object, limit: TEXT_BYTES
      t.bigint   :user_id, null: false
      t.datetime :created_at
    end
    add_index :versions, %i[item_type item_id]
  end
end
