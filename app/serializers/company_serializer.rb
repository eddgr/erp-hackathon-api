class CompanySerializer < ActiveModel::Serializer
  attributes :id, :name, :total_deliveries, :guaranteed_deliveries, :late_deliveries
end
