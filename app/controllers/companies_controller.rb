class CompaniesController < ApplicationController
  # READ
  def index
    @companies = Company.all
    render json: @companies, status: 200
  end

  # CREATE
  def create
    @company = Company.create(company_params)
    render json: @company, status: 200
  end

  # STATS
  # total deliveries
  # total cost
  def total_deliveries
    company_setter
    @total = company_setter.total_deliveries
    render json: @total, status: 200
  end

  def total_cost
    company_setter
    @total_cost = company_setter.total_cost(0) + company_setter.total_cost(1) + company_setter.total_cost(-1)
    render json: @total_cost, status: 200
  end

  # on time deliveries
  def on_time_deliveries
    company_setter
    @on_time = company_setter.guaranteed_deliveries
    render json: @on_time, status: 200
  end

  # late deliveries and potential refunds
  def late_deliveries
    company_setter
    @late = company_setter.late_deliveries
    render json: @late, status: 200
  end

  def late_cost
    company_setter
    @late_cost = company_setter.total_cost(-1)
    render json: @late_cost, status: 200
  end

  # PRIVATE
  private

  def company_setter
    @company = Company.find(params[:id])
  end

  def company_params
    params.require(:company).permit(:name)
  end

end
