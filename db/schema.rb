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

ActiveRecord::Schema.define(version: 20160109193733) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "property_types", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rental_states", force: :cascade do |t|
    t.string   "name",           null: false
    t.string   "display_colour"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  create_table "rentals", force: :cascade do |t|
    t.string   "title",               null: false
    t.string   "city",                null: false
    t.integer  "property_type_id"
    t.string   "image"
    t.integer  "bedrooms",            null: false
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.float    "daily_rent",          null: false
    t.integer  "rent_payment_period", null: false
    t.integer  "rental_state_id",     null: false
  end

  add_index "rentals", ["property_type_id"], name: "index_rentals_on_property_type_id", using: :btree
  add_index "rentals", ["rental_state_id"], name: "index_rentals_on_rental_state_id", using: :btree

  add_foreign_key "rentals", "property_types"
  add_foreign_key "rentals", "rental_states"
end
