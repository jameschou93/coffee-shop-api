class Api::V1::BusinessesController < ApplicationController

  def index
    @businesses = Business.all
    render 'index.json.jbuilder'
  end

  def create
    @business = Business.new(business_params)

    if @business.save
      head(:ok)
    else
      head(:unprocessable_entity)
    end
  end

private

  def business_params
    params.permit(:name, :address, :city, :state, :zip, :wifi, :phone, :bathroom)
  end
end
