# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20180929232751) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "feelings", force: :cascade do |t|
    t.integer "sleep_rating"
    t.integer "pain_rating"
    t.integer "mood_rating"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "notes"
    t.string "title"
    t.string "physical_symptoms"
    t.string "psychological_symptoms"
    t.integer "focus_rating"
    t.integer "user_id"
    t.integer "skin_irritation"
  end

  create_table "food_categories", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.string "colour"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "meal_id"
    t.integer "food_id"
  end

  create_table "food_items", force: :cascade do |t|
    t.integer "food_id"
    t.integer "meal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foods", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "food_category_id"
  end

  create_table "liquid_categories", force: :cascade do |t|
    t.string "name"
    t.string "colour"
    t.string "type"
    t.integer "units"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "description"
  end

  create_table "liquids", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "category"
    t.string "image"
    t.integer "liquid_category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "glass_count"
    t.integer "user_id"
  end

  create_table "meals", force: :cascade do |t|
    t.string "title"
    t.text "notes"
    t.integer "mood_rating"
    t.integer "sleep_rating"
    t.text "physical_symptoms"
    t.text "psychological_symptoms"
    t.string "timestamps"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.integer "pain"
    t.string "meal_type"
    t.integer "drink_count"
    t.string "thumbnail"
    t.string "hero_image"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "is_admin"
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "goal"
    t.text "biography"
    t.string "profile_visibility"
    t.string "website"
    t.string "notifications"
    t.string "image"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
