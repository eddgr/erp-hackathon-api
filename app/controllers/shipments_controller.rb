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
    params.require(:shipment).permit(:company_id, :ship_to_name, :ship_to_phone, :ship_to_company_name, :ship_to_address_line1, :ship_to_address_line2, :ship_to_city_locality, :ship_to_state_province, :ship_to_postal_code, :ship_to_country_code, :ship_from_name, :ship_from_phone, :ship_from_company_name, :ship_from_address_line1, :ship_from_address_line2, :ship_from_city_locality, :ship_from_state_province, :ship_from_postal_code, :ship_from_country_code, :package_weight, :estimated_delivery)
  end
end
