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

ActiveRecord::Schema.define(version: 20140330171122) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "belongings", force: true do |t|
    t.integer  "move_id"
    t.string   "name"
    t.string   "kind_of"
    t.string   "picture_url"
    t.string   "current_room"
    t.string   "condition"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "target_room"
  end

  create_table "moves", force: true do |t|
    t.integer  "user_id"
    t.string   "name"
    t.string   "start_address"
    t.string   "start_city"
    t.string   "start_state"
    t.integer  "start_zip"
    t.string   "target_address"
    t.string   "target_city"
    t.string   "target_state"
    t.integer  "target_zip"
    t.text     "description"
    t.string   "move_out_date"
    t.string   "move_in_date"
    t.integer  "target_budget"
    t.integer  "actual_budget"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name",                      null: false
    t.string   "last_name",                       null: false
    t.string   "email",                           null: false
    t.boolean  "admin?",          default: false
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
