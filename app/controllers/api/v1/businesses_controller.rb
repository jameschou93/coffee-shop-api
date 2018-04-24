class Api::V1::BusinessesController < ApplicationController

  def index
    @businesses = Business.order("created_at DESC")
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

  def update
    @business =Business.find(params[:id])
    @business.update_attributes(business_params)
  end
private

  def business_params
    params.permit(:name, :address, :city, :state, :zip, :wifi, :phone, :bathroom)
  end
end
