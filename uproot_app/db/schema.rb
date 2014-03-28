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

ActiveRecord::Schema.define(version: 20140328180054) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accommodations", force: true do |t|
    t.integer  "destination_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "belongings", force: true do |t|
    t.integer  "move_id"
    t.string   "name"
    t.string   "type"
    t.string   "room"
    t.string   "item_condition"
    t.string   "picture_url"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "destinations", force: true do |t|
    t.integer  "move_id"
    t.string   "address"
    t.string   "city"
    t.string   "state",      limit: 2
    t.string   "zip",        limit: 5
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "dwellings", force: true do |t|
    t.integer  "destination_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "movers", force: true do |t|
    t.integer  "destination_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "moves", force: true do |t|
    t.integer  "user_id"
    t.decimal  "budget",     precision: 10, scale: 2, default: 0.0
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "new_neighborhoods", force: true do |t|
    t.integer  "destination_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "first_name",                                null: false
    t.string   "last_name",                                 null: false
    t.string   "email",                                     null: false
    t.string   "current_address",                           null: false
    t.string   "city",                                      null: false
    t.string   "state",           limit: 2,                 null: false
    t.integer  "zip",             limit: 8,                 null: false
    t.boolean  "admin?",                    default: false
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vehicles", force: true do |t|
    t.integer  "destination_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
