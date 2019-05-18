class Shipment < ApplicationRecord
  belongs_to :company
  has_many :deliveries
end
