class DeliveriesController < ApplicationController
  # READ
  def index
    @deliveries = Delivery.all
    render json: @deliveries, status: 200
  end

  # CREATE
  def create
    @delivery = Delivery.create(delivery_params)
    render json: @delivery, status: 200
  end

  # PRIVATE
  private

  def delivery_params
    params.require(:delivery).permit(:actual_delivery, :shipment_id, :company_id, :price, :carrier_id)
  end
end
