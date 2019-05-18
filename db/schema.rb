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

ActiveRecord::Schema.define(version: 2019_05_18_173701) do

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deliveries", force: :cascade do |t|
    t.integer "shipment_id"
    t.integer "company_id"
    t.string "actual_delivery"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_deliveries_on_company_id"
    t.index ["shipment_id"], name: "index_deliveries_on_shipment_id"
  end

  create_table "shipments", force: :cascade do |t|
    t.integer "company_id"
    t.string "ship_to_name"
    t.string "ship_to_phone"
    t.string "ship_to_company_name"
    t.string "ship_to_address_line1"
    t.string "ship_to_address_line2"
    t.string "ship_to_city_locality"
    t.string "ship_to_state_province"
    t.string "ship_to_postal_code"
    t.string "ship_to_country_code"
    t.string "ship_from_name"
    t.string "ship_from_phone"
    t.string "ship_from_company_name"
    t.string "ship_from_address_line1"
    t.string "ship_from_address_line2"
    t.string "ship_from_city_locality"
    t.string "ship_from_state_province"
    t.string "ship_from_postal_code"
    t.string "ship_from_country_code"
    t.string "package_weight"
    t.string "estimated_delivery"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_shipments_on_company_id"
  end

end
