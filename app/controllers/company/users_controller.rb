class Company::UsersController < ApplicationController
  def edit
  end

  def update
    if current_user.update(user_params)
      redirect_to new_company_shop_path
      flash[:success] = "Company information updated"
    else
      flash[:danger] = "Company information not updated"
      render :edit
    end
  end

  def show
  end

  private
  def user_params
    params.require(:user).permit :name, :address_line_1, :address_line_2,
      :zipcode, :city, :country, :vat_id_number, :phone_number
  end
end
