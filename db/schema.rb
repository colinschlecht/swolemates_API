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

ActiveRecord::Schema.define(version: 2021_06_12_042335) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "diets", force: :cascade do |t|
    t.boolean "keto"
    t.boolean "low_carb"
    t.boolean "vegan"
    t.boolean "vegetarian"
    t.boolean "pescatarian"
    t.boolean "alkaline"
    t.boolean "raw_food"
    t.boolean "intermittent_fasting"
    t.boolean "paleo"
    t.boolean "clean_eating"
    t.boolean "mediterranean"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "exercise_disciplines", force: :cascade do |t|
    t.boolean "cardio"
    t.boolean "muscle_strengthening"
    t.boolean "aerobic"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "exercise_times", force: :cascade do |t|
    t.boolean "early_morning"
    t.boolean "morning"
    t.boolean "afternoon"
    t.boolean "early_evening"
    t.boolean "late_evening"
    t.boolean "late_night"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "gender_preferences", force: :cascade do |t|
    t.boolean "male"
    t.boolean "female"
    t.boolean "non_binary"
    t.boolean "none"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "locations", force: :cascade do |t|
    t.decimal "latitude"
    t.decimal "longitude"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "match_requests", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.integer "friend_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_match_requests_on_user_id"
  end

  create_table "matches", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.integer "friend_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_matches_on_user_id"
  end

  create_table "music_preferences", force: :cascade do |t|
    t.boolean "rock"
    t.boolean "techno"
    t.boolean "rap"
    t.boolean "country"
    t.boolean "pop"
    t.boolean "alternative"
    t.boolean "classical"
    t.boolean "funk"
    t.boolean "latin"
    t.boolean "jazz"
    t.boolean "none"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "unmatches", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.integer "friend_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_unmatches_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "gender"
    t.bigint "exercise_time_id", null: false
    t.bigint "exercise_discipline_id", null: false
    t.bigint "diet_id", null: false
    t.bigint "gender_preference_id", null: false
    t.bigint "location_id", null: false
    t.bigint "music_preference_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["diet_id"], name: "index_users_on_diet_id"
    t.index ["exercise_discipline_id"], name: "index_users_on_exercise_discipline_id"
    t.index ["exercise_time_id"], name: "index_users_on_exercise_time_id"
    t.index ["gender_preference_id"], name: "index_users_on_gender_preference_id"
    t.index ["location_id"], name: "index_users_on_location_id"
    t.index ["music_preference_id"], name: "index_users_on_music_preference_id"
  end

  add_foreign_key "match_requests", "users"
  add_foreign_key "matches", "users"
  add_foreign_key "unmatches", "users"
  add_foreign_key "users", "diets"
  add_foreign_key "users", "exercise_disciplines"
  add_foreign_key "users", "exercise_times"
  add_foreign_key "users", "gender_preferences"
  add_foreign_key "users", "locations"
  add_foreign_key "users", "music_preferences"
end
