class CreateShipments < ActiveRecord::Migration[5.2]
  def change
    create_table :shipments do |t|
      t.belongs_to :company, foreign_key: true
      t.string :ship_to_name, null: false
      t.string :ship_to_phone, null: false
      t.string :ship_to_company_name, null: false
      t.string :ship_to_address_line1, null: false
      t.string :ship_to_address_line2, null: false
      t.string :ship_to_city_locality, null: false
      t.string :ship_to_state_province, null: false
      t.string :ship_to_postal_code, null: false
      t.string :ship_to_country_code, null: false

      t.string :ship_from_name, null: false
      t.string :ship_from_phone, null: false
      t.string :ship_from_company_name, null: false
      t.string :ship_from_address_line1, null: false
      t.string :ship_from_address_line2, null: false
      t.string :ship_from_city_locality, null: false
      t.string :ship_from_state_province, null: false
      t.string :ship_from_postal_code, null: false
      t.string :ship_from_country_code, null: false

      t.string :package_weight, null: false
      t.string :estimated_delivery, null: false

      t.timestamps
    end
  end
end
