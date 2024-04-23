class ApplicationController < ActionController::Base
  include Pundit::Authorization
  before_action :configure_permitted_parameters, if: :devise_controller?
#   before_action :authenticate_user!
  rescue_from Pundit::NotAuthorizedError , with: :user_not_authorized


  protected

  def configure_permitted_parameters
    p "===========================================================  "
    devise_parameter_sanitizer.permit(:sign_up, keys: [:role])
  end

  def user_not_authorized
    flash[:error] = "You are not Authorized toPerform This Action" 
    redirect_back(fallback_location: root_path)
  end  
end


