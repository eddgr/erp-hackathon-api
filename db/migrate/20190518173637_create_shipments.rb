class CreateShipments < ActiveRecord::Migration[5.2]
  def change
    create_table :shipments do |t|
      t.belongs_to :company, foreign_key: true
      t.string :ship_to_name
      t.string :ship_to_phone
      t.string :ship_to_company_name
      t.string :ship_to_address_line1
      t.string :ship_to_address_line2
      t.string :ship_to_city_locality
      t.string :ship_to_state_province
      t.string :ship_to_postal_code
      t.string :ship_to_country_code

      t.string :ship_from_name
      t.string :ship_from_phone
      t.string :ship_from_company_name
      t.string :ship_from_address_line1
      t.string :ship_from_address_line2
      t.string :ship_from_city_locality
      t.string :ship_from_state_province
      t.string :ship_from_postal_code
      t.string :ship_from_country_code

      t.string :package_weight
      t.string :estimated_delivery

      t.timestamps
    end
  end
end
