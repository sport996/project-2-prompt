class ApplicationController < ActionController::Base
before_action :configure_permitted_parameters, if: :devise_controller?

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :name, :email, :admin, :years_exp, :prog_lang, :country])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username, :name, :email, :admin, :years_exp, :prog_lang, :country])
  end
end
