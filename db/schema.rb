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

ActiveRecord::Schema.define(:version => 20131102030634) do

  create_table "categories", :force => true do |t|
    t.string  "name",   :default => "Grand Slam"
    t.integer "points"
  end

  create_table "countries", :force => true do |t|
    t.string  "alpha2"
    t.string  "alpha3"
    t.integer "num3"
    t.string  "name"
    t.string  "image"
  end

  create_table "players", :force => true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.integer  "country_id"
    t.date     "birthdate"
    t.float    "height"
    t.string   "gender"
    t.integer  "rank"
    t.string   "image"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "results", :force => true do |t|
    t.integer  "tournament_id"
    t.integer  "round_id"
    t.integer  "player_id"
    t.integer  "opponent_id"
    t.integer  "set1p",         :default => 0
    t.integer  "set1o",         :default => 0
    t.integer  "set2p",         :default => 0
    t.integer  "set2o",         :default => 0
    t.integer  "set3p"
    t.integer  "set3o"
    t.integer  "set4p"
    t.integer  "set4o"
    t.integer  "set5p"
    t.integer  "set5o"
    t.date     "date"
    t.text     "comment"
    t.datetime "created_at",                   :null => false
    t.datetime "updated_at",                   :null => false
    t.integer  "sequence"
  end

  create_table "rounds", :force => true do |t|
    t.string "name"
    t.string "abbr"
  end

  create_table "tournaments", :force => true do |t|
    t.string   "name"
    t.integer  "year"
    t.integer  "category_id"
    t.date     "from_date"
    t.date     "to_date"
    t.integer  "venue_id"
    t.float    "prize"
    t.string   "website"
    t.string   "image"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "venues", :force => true do |t|
    t.string  "name"
    t.integer "country_id"
    t.string  "city",                            :null => false
    t.string  "surface",    :default => "Glass"
    t.string  "image"
  end

end
