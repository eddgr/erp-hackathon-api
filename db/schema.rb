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

ActiveRecord::Schema.define(version: 2019_05_18_214635) do

  create_table "carriers", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.integer "shipping_cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deliveries", force: :cascade do |t|
    t.integer "shipment_id"
    t.integer "company_id"
    t.string "actual_delivery"
    t.integer "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_deliveries_on_company_id"
    t.index ["shipment_id"], name: "index_deliveries_on_shipment_id"
  end

  create_table "shipments", force: :cascade do |t|
    t.integer "company_id"
    t.integer "carrier_id"
    t.string "ship_to_name"
    t.string "ship_to_address"
    t.string "ship_from_name"
    t.string "ship_from_address"
    t.string "package_weight"
    t.string "estimated_delivery"
    t.integer "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["carrier_id"], name: "index_shipments_on_carrier_id"
    t.index ["company_id"], name: "index_shipments_on_company_id"
  end

end
