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

ActiveRecord::Schema.define(version: 2020_10_12_065131) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comments", force: :cascade do |t|
    t.string "user_name"
    t.text "body"
    t.integer "roast_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "items", force: :cascade do |t|
    t.string "title"
    t.string "link"
    t.text "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
  end

  create_table "roasts", force: :cascade do |t|
    t.date "date"
    t.string "beans"
    t.integer "s_weight"
    t.integer "f_weight"
    t.integer "air_temp"
    t.string "roaster"
    t.string "f_crack_s"
    t.string "roast_dev"
    t.string "total_time"
    t.string "cooling_time"
    t.text "roast_notes"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "drop_temp"
    t.string "turn_point"
    t.string "end_heat"
    t.string "end_temp"
  end

  create_table "stocks", force: :cascade do |t|
    t.text "bean"
    t.float "amount"
    t.date "buy_date"
    t.boolean "instock"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "country"
    t.string "process"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "avatar"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
