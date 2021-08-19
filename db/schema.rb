# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2021_08_19_102207) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "apprenticeship_levels", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "learning_outcome_matrices", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "skill_id", null: false
    t.bigint "skills_level_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["skill_id"], name: "index_learning_outcome_matrices_on_skill_id"
    t.index ["skills_level_id"], name: "index_learning_outcome_matrices_on_skills_level_id"
    t.index ["user_id"], name: "index_learning_outcome_matrices_on_user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "info"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "skills", force: :cascade do |t|
    t.string "title"
    t.boolean "display", default: true
    t.bigint "apprenticeship_level_id", null: false
    t.bigint "theme_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["apprenticeship_level_id"], name: "index_skills_on_apprenticeship_level_id"
    t.index ["theme_id"], name: "index_skills_on_theme_id"
  end

  create_table "skills_levels", force: :cascade do |t|
    t.text "description"
    t.string "color"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "themes", force: :cascade do |t|
    t.string "title"
    t.string "link"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "email"
    t.bigint "role_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["role_id"], name: "index_users_on_role_id"
  end

  add_foreign_key "learning_outcome_matrices", "skills"
  add_foreign_key "learning_outcome_matrices", "skills_levels"
  add_foreign_key "learning_outcome_matrices", "users"
  add_foreign_key "skills", "apprenticeship_levels"
  add_foreign_key "skills", "themes"
  add_foreign_key "users", "roles"
end
