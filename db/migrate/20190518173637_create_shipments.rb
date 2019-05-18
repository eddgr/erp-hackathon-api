class CreateShipments < ActiveRecord::Migration[5.2]
  def change
    create_table :shipments do |t|
      t.belongs_to :company, foreign_key: true
      t.belongs_to :carrier, foreign_key: true

      t.string :ship_to_name
      t.string :ship_to_address

      t.string :ship_from_name
      t.string :ship_from_address
      t.string :package_weight
      t.string :estimated_delivery
      t.integer :cost

      t.timestamps
    end
  end
end
