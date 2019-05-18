class ShipmentSerializer < ActiveModel::Serializer
  attributes :id, :estimated_delivery, :company_id
end
