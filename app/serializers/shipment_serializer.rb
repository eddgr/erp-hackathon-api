class ShipmentSerializer < ActiveModel::Serializer
  attributes :id, :company_id, :created_at, :estimated_delivery, :cost
end
