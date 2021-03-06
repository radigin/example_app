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

ActiveRecord::Schema.define(version: 20160513092613) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "addresses", force: :cascade do |t|
    t.integer  "person_id",              null: false
    t.string   "index",        limit: 6, null: false
    t.string   "region",                 null: false
    t.string   "district"
    t.string   "city"
    t.string   "settlement"
    t.string   "street"
    t.string   "house"
    t.string   "building"
    t.string   "construction"
    t.string   "flat"
    t.integer  "atype",                  null: false
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  add_index "addresses", ["person_id"], name: "index_addresses_on_person_id", using: :btree

  create_table "contracts", force: :cascade do |t|
    t.integer  "person_id",                null: false
    t.integer  "post_id",                  null: false
    t.float    "salary",     default: 0.0, null: false
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  add_index "contracts", ["person_id"], name: "index_contracts_on_person_id", using: :btree
  add_index "contracts", ["post_id"], name: "index_contracts_on_post_id", using: :btree

  create_table "people", force: :cascade do |t|
    t.string   "last_name",                             null: false
    t.string   "first_name",                            null: false
    t.string   "second_name"
    t.date     "birthday",                              null: false
    t.string   "sex",         limit: 1,                 null: false
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.boolean  "checked",               default: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "name",       null: false
    t.string   "full_name",  null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "posts", ["full_name"], name: "index_posts_on_full_name", unique: true, using: :btree

  add_foreign_key "addresses", "people"
  add_foreign_key "contracts", "people"
  add_foreign_key "contracts", "posts"
end
