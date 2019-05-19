class DeliverySerializer < ActiveModel::Serializer
  attributes :id, :shipment_id, :company_id, :carrier_id, :estimated_delivery, :actual_delivery, :price
end
