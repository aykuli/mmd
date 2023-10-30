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

ActiveRecord::Schema[7.1].define(version: 2023_10_28_124946) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  # Custom types defined in this database.
  # Note that some types may not work with other database engines. Be careful if changing database.
  create_enum "gender_enum", ["female", "male"]
  create_enum "measurement_warnings", ["HIGH", "LOW"]

  create_table "entities", force: :cascade do |t|
    t.string "title"
    t.string "code"
    t.integer "max"
    t.integer "min"
    t.integer "user_id"
    t.enum "gender", default: "female", enum_type: "gender_enum"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["code", "gender"], name: "entity_code_gender_idx", unique: true
    t.check_constraint "max > min", name: "entity_max_min_check"
  end

  create_table "measurements", force: :cascade do |t|
    t.integer "entity_id"
    t.date "measured_at"
    t.integer "value"
    t.enum "warning", enum_type: "measurement_warnings"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "password_digest"
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.integer "parent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
