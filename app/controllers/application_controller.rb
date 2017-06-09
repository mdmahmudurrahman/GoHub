class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_locale

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:user_type])
  end

  def after_sign_in_path_for(resource)
    if resource.user_type == User.business_types[:corporate]
      company_settings_path
    elsif resource.user_type == User.business_types[:community]
      #TODO: will change later depending on the requirement
      root_path
    else
      root_path
    end
  end

  private
  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options(options = {})
    {locale: I18n.locale}.merge options
  end
end
