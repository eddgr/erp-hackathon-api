class CreateDeliveries < ActiveRecord::Migration[5.2]
  def change
    create_table :deliveries do |t|
      t.belongs_to :shipment, foreign_key: true
      t.belongs_to :company, foreign_key: true
      t.string :actual_delivery
      t.integer :price

      t.timestamps
    end
  end
end
