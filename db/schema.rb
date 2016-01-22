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

ActiveRecord::Schema.define(version: 20160122190325) do

  create_table "boats", force: :cascade do |t|
    t.integer  "user_id"
    t.string   "name"
    t.integer  "capacity"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.integer  "location_id"
    t.string   "avatar_file_name"
    t.string   "avatar_content_type"
    t.integer  "avatar_file_size"
    t.datetime "avatar_updated_at"
  end

  add_index "boats", ["location_id"], name: "index_boats_on_location_id"
  add_index "boats", ["user_id"], name: "index_boats_on_user_id"

  create_table "followships", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "boat_id"
  end

  create_table "jobs", force: :cascade do |t|
    t.integer  "boat_id"
    t.string   "name"
    t.decimal  "cost"
    t.string   "cargo"
    t.integer  "containers"
    t.integer  "origin"
    t.integer  "destination"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.integer  "user_id"
    t.integer  "state"
  end

  add_index "jobs", ["boat_id"], name: "index_jobs_on_boat_id"
  add_index "jobs", ["user_id"], name: "index_jobs_on_user_id"

  create_table "locations", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
