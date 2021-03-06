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

ActiveRecord::Schema.define(version: 20150114221130) do

  create_table "alerts", force: true do |t|
    t.string   "source"
    t.string   "subject"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "pool_id"
    t.datetime "received"
  end

  create_table "floods", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "bind"
  end

  create_table "gmail_connections", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pools", force: true do |t|
    t.string   "name"
    t.string   "auth_token"
    t.integer  "flood_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "sources", force: true do |t|
    t.string   "name"
    t.integer  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "flood_id"
  end

  create_table "wfm_alerts", force: true do |t|
    t.string   "source"
    t.string   "subject"
    t.integer  "pool_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.datetime "received"
  end

end
