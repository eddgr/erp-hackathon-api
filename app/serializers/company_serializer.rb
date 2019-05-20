class CompanySerializer < ActiveModel::Serializer
  attributes :id, :name, :deliveries

  def deliveries
    {
      total_deliveries: object.total_deliveries,
      guaranteed_deliveries: object.guaranteed_deliveries,
      late_deliveries: object.late_deliveries
    }
  end
end
