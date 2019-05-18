class Shipment < ApplicationRecord
  belongs_to :company
  belongs_to :carrier
  has_many :deliveries
end
