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

ActiveRecord::Schema.define(version: 2021_02_21_022052) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "good_ats", force: :cascade do |t|
    t.string "content"
    t.bigint "worksheet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["worksheet_id"], name: "index_good_ats_on_worksheet_id"
  end

  create_table "loves", force: :cascade do |t|
    t.string "content"
    t.bigint "worksheet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["worksheet_id"], name: "index_loves_on_worksheet_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "worksheets", force: :cascade do |t|
    t.string "name"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_worksheets_on_user_id"
  end

  create_table "world_needs", force: :cascade do |t|
    t.string "content"
    t.bigint "worksheet_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["worksheet_id"], name: "index_world_needs_on_worksheet_id"
  end

  add_foreign_key "good_ats", "worksheets"
  add_foreign_key "loves", "worksheets"
  add_foreign_key "worksheets", "users"
  add_foreign_key "world_needs", "worksheets"
end
