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

ActiveRecord::Schema.define(version: 20180128110312) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"
  enable_extension "hstore"

  create_table "players", force: :cascade do |t|
    t.string   "email",                  default: "", null: false
    t.string   "name",                   default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "players", ["email"], name: "index_players_on_email", unique: true, using: :btree
  add_index "players", ["reset_password_token"], name: "index_players_on_reset_password_token", unique: true, using: :btree

  create_table "punishments", force: :cascade do |t|
    t.string   "name"
    t.boolean  "trivia"
    t.boolean  "dices"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rounds", force: :cascade do |t|
    t.boolean  "active"
    t.integer  "player_id"
    t.string   "player1"
    t.string   "player2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "rounds", ["player_id"], name: "index_rounds_on_player_id", using: :btree

  create_table "trivia_game_questions", force: :cascade do |t|
    t.integer  "trivia_game_id"
    t.string   "question"
    t.boolean  "right"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "trivia_game_questions", ["trivia_game_id"], name: "index_trivia_game_questions_on_trivia_game_id", using: :btree

  create_table "trivia_games", force: :cascade do |t|
    t.string   "title"
    t.string   "punishment"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
