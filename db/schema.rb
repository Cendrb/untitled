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

ActiveRecord::Schema.define(version: 20160524144158) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "adjectives", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chunker_endings", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chunker_subjects", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "chunker_verbs", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "competitions", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dota_hero_show_criteria", force: :cascade do |t|
    t.string   "name"
    t.boolean  "show_always"
    t.integer  "upper_limit"
    t.integer  "lower_limit"
    t.integer  "dota_hero_show_criterium_mode_id"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.integer  "sorting_order"
  end

  create_table "dota_hero_show_criterium_modes", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dota_heroes", force: :cascade do |t|
    t.string   "name"
    t.string   "main_attribute"
    t.integer  "str_base"
    t.float    "str_gain"
    t.integer  "agi_base"
    t.float    "agi_gain"
    t.integer  "int_base"
    t.float    "int_gain"
    t.integer  "movement_speed"
    t.float    "armor"
    t.integer  "dmg_min"
    t.integer  "dmg_max"
    t.integer  "attack_range"
    t.float    "base_attack_time"
    t.float    "attack_point"
    t.float    "attack_backswing"
    t.integer  "vision_day"
    t.integer  "vision_night"
    t.float    "turn_rate"
    t.integer  "collision_size"
    t.float    "health_regen"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "messages", force: :cascade do |t|
    t.text     "content"
    t.integer  "user_id"
    t.integer  "room_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nouns", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string   "name"
    t.string   "password"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_authenticated_for_rooms", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "room_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "hashed_password"
    t.string   "salt"
    t.string   "nickname"
    t.integer  "access_level"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

end
