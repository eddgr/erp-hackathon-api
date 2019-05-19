class Company < ApplicationRecord
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

  def total_orders
    self.deliveries.count
  end

  def guaranteed_deliveries
    self.sort_score[0].length + self.sort_score[1].length
  end

  def late_deliveries
    self.sort_score[-1].length
  end

  # HELPER METHOD

  # calculate cost by late [-1], early [1], on time [0]
  def total_cost(late_num)
    self.sort_score[late_num].map do |delivery|
      delivery.price
    end.inject(0){|sum,x| sum + x }
  end

  # def late_cost
  #   # grab the price from sort_score[-1], sum and reduce
  #   self.sort_score[-1].map do |delivery|
  #     delivery.price
  #   end.inject(0){|sum,x| sum + x }
  # end

end
