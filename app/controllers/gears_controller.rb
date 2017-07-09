class GearsController < ApplicationController
  def index
    @shops = Shop.near(params[:location], 5)
  end

  def new
    @gear = Gear.new
  end
end
