# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20160713235049) do

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "item_access_counters", force: :cascade do |t|
    t.integer  "count",      default: 0
    t.integer  "item_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "item_access_permitted_users", force: :cascade do |t|
    t.string   "permission"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "item_searched_counters", force: :cascade do |t|
    t.integer  "count",      default: 0
    t.integer  "item_id"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "items", force: :cascade do |t|
    t.boolean  "is_active",        default: true
    t.string   "name",                            null: false
    t.string   "uuid",                            null: false
    t.text     "message"
    t.string   "manufacture_name"
    t.string   "manufacture_cn"
    t.string   "company"
    t.string   "prefecture"
    t.string   "address"
    t.string   "user_type"
    t.string   "item_type"
    t.integer  "user_id"
    t.string   "image"
    t.string   "webimage_url"
    t.integer  "favorite_counter"
    t.integer  "access_counter"
    t.integer  "activity_counter"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "items", ["uuid"], name: "index_items_on_uuid", unique: true

  create_table "knowledges", force: :cascade do |t|
    t.string   "name"
    t.text     "message"
    t.string   "uuid"
    t.integer  "user_id"
    t.integer  "item_id"
    t.string   "image"
    t.string   "webimage_url"
    t.integer  "favorite_counter"
    t.integer  "access_counter"
    t.integer  "activity_counter"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "matching_conversations", force: :cascade do |t|
    t.string   "name"
    t.integer  "matching_id"
    t.integer  "user_id"
    t.text     "message"
    t.string   "uuid"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "matchings", force: :cascade do |t|
    t.string   "name"
    t.integer  "item_id"
    t.string   "match_type"
    t.integer  "user_id"
    t.boolean  "is_active",  default: true
    t.string   "uuid"
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "reservations", force: :cascade do |t|
    t.string   "name"
    t.string   "uuid",                          null: false
    t.datetime "start_datetime"
    t.datetime "end_datetime"
    t.boolean  "is_active",      default: true
    t.string   "message"
    t.integer  "item_id"
    t.integer  "user_id"
    t.datetime "created_at",                    null: false
    t.datetime "updated_at",                    null: false
  end

  add_index "reservations", ["item_id"], name: "index_reservations_on_item_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "uuid",                            null: false
    t.text     "message"
    t.string   "email"
    t.boolean  "is_active",        default: true
    t.string   "password"
    t.string   "password_digest"
    t.string   "company"
    t.string   "prefecture"
    t.string   "address"
    t.string   "user_type"
    t.string   "image"
    t.string   "webimage_url"
    t.integer  "favorite_counter"
    t.integer  "access_counter"
    t.integer  "activity_counter"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
  end

  add_index "users", ["uuid"], name: "index_users_on_uuid", unique: true

end
