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

ActiveRecord::Schema.define(version: 20160504002401) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "restaurants", force: :cascade do |t|
    t.string   "name"
    t.string   "neighborhood"
    t.string   "cuisine"
    t.boolean  "private_dining"
    t.boolean  "chefs_table"
    t.integer  "min_people"
    t.integer  "max_people"
    t.boolean  "buyout"
    t.string   "buyout_price"
    t.string   "contact_name"
    t.string   "contact_number"
    t.string   "contact_email"
    t.boolean  "valet"
    t.boolean  "full_bar"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

end
