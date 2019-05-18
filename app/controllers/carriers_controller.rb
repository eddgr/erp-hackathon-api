class CarriersController < ApplicationController
  # READ
  def index
    @carriers = Carrier.all
    render json: @carriers, status: 200
  end

  # CREATE
  def create
    @carrier = Carrier.create(carrier_params)
    render json: @carrier, status: 200
  end

  # PRIVATE
  private

  def carrier_params
    params.require(:carrier).permit(:name)
  end
end
