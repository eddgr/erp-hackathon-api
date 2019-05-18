class Carrier < ApplicationRecord
  has_many :shipments
  has_many :deliveries, through: :shipments

  # INSTANCE METHODS
  def sort_score
    # self.deliveries.length === total deliveries
    # loop through deliveries and group by -1, 0, 1
    self.deliveries.group_by do |delivery|
      delivery.estimated_delivery <=> delivery.actual_delivery
    end
    # counting all the early and on time, divide that by total to get FINAL reliability score
  end

  def reliability_score
    ((self.deliveries.length - self.sort_score[-1].length).to_f / self.deliveries.length.to_f) * 100
  end
end
