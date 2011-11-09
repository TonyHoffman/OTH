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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20111019155017) do

  create_table "fans", :force => true do |t|
    t.string   "email"
    t.integer  "fan"
    t.integer  "league_id"
    t.string   "password"
    t.string   "user_name"
    t.boolean  "is_admin"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "franchises", :force => true do |t|
    t.string   "name"
    t.string   "season"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "players", :force => true do |t|
    t.string  "first_name"
    t.string  "last_name"
    t.string  "position"
    t.boolean "active",                                        :default => true
    t.integer "first_game"
    t.integer "last_game"
    t.decimal "points_per_game", :precision => 5, :scale => 2
    t.decimal "cap",             :precision => 5, :scale => 2
    t.integer "points"
    t.integer "fights"
    t.integer "plus_minus"
    t.integer "assists"
    t.integer "goals"
    t.integer "games"
    t.integer "franchise_id"
  end

  add_index "players", ["franchise_id"], :name => "index_players_on_franchise_id"

  create_table "scheduled_games", :force => true do |t|
    t.string   "opponent"
    t.datetime "date"
    t.integer  "franchise_id"
    t.boolean  "is_scored"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "scheduled_games", ["franchise_id"], :name => "index_scheduled_games_on_franchise_id"

end
