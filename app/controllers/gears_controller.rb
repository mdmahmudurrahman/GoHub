class GearsController < ApplicationController
  def index
    @shops = Shop.near(params[:location], 5)
  end
end
