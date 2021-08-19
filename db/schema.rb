ActiveRecord::Schema.define(version: 20_210_819_051_952) do
  enable_extension 'plpgsql'

  create_table 'apprenticeship_levels', force: :cascade do |t|
    t.string 'title'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'roles', force: :cascade do |t|
    t.string 'name'
    t.string 'info'
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
  end

  create_table 'skills', force: :cascade do |t|
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

  create_table 'users', force: :cascade do |t|
    t.string 'first_name'
    t.string 'last_name'
    t.string 'email'
    t.bigint 'role_id', null: false
    t.datetime 'created_at', precision: 6, null: false
    t.datetime 'updated_at', precision: 6, null: false
    t.index ['role_id'], name: 'index_users_on_role_id'
  end

  add_foreign_key 'skills', 'apprenticeship_levels'
  add_foreign_key 'skills', 'themes'
  add_foreign_key 'users', 'roles'
end
