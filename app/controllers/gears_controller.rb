class GearsController < ApplicationController
  def index
    @shops = Shop.near(params[:location], 5)
  end

  def new
    @gear = Gear.new
    @gear.attribute_values.build
    # @gear.attribute_values.build
  end

  def create
    binding.pry
    @gear = Gear.new(gear_params)
    @gear.save()
    binding.pry
    redirect_to new_gear_path
  end

  private
  def gear_params
    params.require(:gear).permit(:shop_id, :title, :description,
      :currency, :price_per_day, :price_per_week, :image, :category_id,
      attribute_values_attributes: [:attribute_id])
  end
end
