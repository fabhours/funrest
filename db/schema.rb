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

ActiveRecord::Schema.define(version: 20150608085145) do

  create_table "cards", force: true do |t|
    t.string   "number"
    t.string   "saldo"
    t.string   "bonus"
    t.string   "freegame"
    t.string   "eticket"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "games", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "price1"
  end

  create_table "kartus", force: true do |t|
    t.string   "nomor"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "saldo"
    t.integer  "bonus"
    t.integer  "freegame"
    t.integer  "eticket"
  end

  create_table "macs", force: true do |t|
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "game_id"
  end

end
