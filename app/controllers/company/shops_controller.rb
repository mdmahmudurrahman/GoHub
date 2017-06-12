class Company::ShopsController < ApplicationController
  before_action :set_shop, only: [:show, :update, :destroy]

  def index
  end

  def show
  end

  def new
    @shop = Shop.new
  end

  def create
    #TODO: Will be refactored later
    h = JSON.parse(params[:data])
    h.each do |d|
      puts d.merge!(user_id: current_user.id)
    end

    Shop.create(h)
    redirect_to company_terms_and_condition_path
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def shop_params
    params.require(:shop).permit :name, :address_line_1, :address_line_2,
      :zipcode, :city, :country, :phone_number
  end

  def set_shop
    @shop = Shop.find(params[:id]) rescue nil
  end
end
