class ShipmentsController < ApplicationController
  # READ
  def index
    @shipments = Shipment.all
    render json: @shipments, status: 200
  end

  # CREATE
  def create
    @shipment = Shipment.create(shipment_params)
    render json: @shipment, status: 200
  end

  # PRIVATE
  private

  def shipment_params
    params.require(:shipment).permit(:company_id, :ship_to_name, :ship_to_address, :ship_from_name, :ship_from_address, :package_weight, :estimated_delivery, :cost, :carrier_id)
  end
end
