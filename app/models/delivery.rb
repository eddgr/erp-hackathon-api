class Delivery < ApplicationRecord
  belongs_to :shipment
  belongs_to :company
end
