class Carrier < ApplicationRecord
  has_many :shipments
  has_many :deliveries, through: :shipments
end
