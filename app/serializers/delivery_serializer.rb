class DeliverySerializer < ActiveModel::Serializer
  attributes :id, :actual_delivery, :shipment_id, :company_id, :estimated_delivery
end
