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

  # PRIVATE
  private

  def company_params
    params.require(:company).permit(:name)
  end

end
