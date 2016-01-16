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

ActiveRecord::Schema.define(version: 20160116170403) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "beers", force: :cascade do |t|
    t.string   "name"
    t.integer  "brewery_id"
    t.text     "description"
    t.string   "image_url"
    t.string   "beer_type"
    t.boolean  "seasonal"
    t.float    "abv"
    t.float    "default_beer_price"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  add_index "beers", ["brewery_id"], name: "index_beers_on_brewery_id", using: :btree

  create_table "breweries", force: :cascade do |t|
    t.string   "name"
    t.string   "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stations", force: :cascade do |t|
    t.integer  "brewery_id"
    t.string   "name"
    t.string   "address"
    t.string   "phone"
    t.string   "website_url"
    t.float    "gps_latitude"
    t.float    "gps_longitude"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "stations", ["brewery_id"], name: "index_stations_on_brewery_id", using: :btree

  create_table "taps", force: :cascade do |t|
    t.integer  "station_id"
    t.integer  "beer_id"
    t.float    "actual_64_price"
    t.boolean  "in_stock"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  add_index "taps", ["beer_id"], name: "index_taps_on_beer_id", using: :btree
  add_index "taps", ["station_id"], name: "index_taps_on_station_id", using: :btree

  add_foreign_key "beers", "breweries"
  add_foreign_key "stations", "breweries"
  add_foreign_key "taps", "beers"
  add_foreign_key "taps", "stations"
end
