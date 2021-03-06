class Api::V1::BusinessesController < ApplicationController

  def index
    @businesses = Business.order("created_at DESC")
    render 'index.json.jbuilder'
  end

  def create
    @business = Business.new(business_params)

    if @business.save
      render json: @business
    else
      head(:unprocessable_entity)
    end
  end

  def update
    @business = Business.find(params[:id])
    @business.update_attributes(business_params)
    render json: @business
  end

  def destroy
  @business = Business.find(params[:id])
  if @business.destroy
    head :no_content, status: :ok
  else
    render json: @business.errors, status: :unprocessable_entity
  end

end
private

  def business_params
    params.require(:business).permit(:name, :address, :city, :state, :zip, :wifi, :phone, :bathroom, :img_url)
  end
end
