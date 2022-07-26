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

ActiveRecord::Schema[7.0].define(version: 2022_07_20_105512) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "code_retreat_sessions", force: :cascade do |t|
    t.date "performed_on"
    t.string "title"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "participations", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "code_retreat_session_id", null: false
    t.bigint "primary_technology_id", null: false
    t.bigint "secondary_technology_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code_retreat_session_id"], name: "index_participations_on_code_retreat_session_id"
    t.index ["primary_technology_id"], name: "index_participations_on_primary_technology_id"
    t.index ["secondary_technology_id"], name: "index_participations_on_secondary_technology_id"
    t.index ["user_id"], name: "index_participations_on_user_id"
  end

  create_table "technologies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "trigram"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "participations", "code_retreat_sessions"
  add_foreign_key "participations", "technologies", column: "primary_technology_id"
  add_foreign_key "participations", "technologies", column: "secondary_technology_id"
  add_foreign_key "participations", "users"
end
