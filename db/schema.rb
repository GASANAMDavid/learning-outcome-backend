ActiveRecord::Schema.define(version: 20_210_808_044_708) do
  enable_extension 'pgcrypto'
  enable_extension 'plpgsql'

  create_table 'apprenticeship_levels', force: :cascade do |t|
    t.string 'title'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'skills', id: :uuid, default: -> { 'gen_random_uuid()' }, force: :cascade do |t|
    t.string 'title'
    t.boolean 'display', default: true
    t.bigint 'apprenticeship_level_id', null: false
    t.bigint 'theme_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['apprenticeship_level_id'], name: 'index_skills_on_apprenticeship_level_id'
    t.index ['theme_id'], name: 'index_skills_on_theme_id'
  end

  create_table 'skills_levels', force: :cascade do |t|
    t.text 'description'
    t.string 'color'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'themes', force: :cascade do |t|
    t.string 'title'
    t.string 'link'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  add_foreign_key 'skills', 'apprenticeship_levels'
  add_foreign_key 'skills', 'themes'
end
