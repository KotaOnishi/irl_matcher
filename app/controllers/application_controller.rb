class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

    before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:image_url])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:company])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:university])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:high_school])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:grad_year])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:tutor])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:status])


    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:image_url])
    devise_parameter_sanitizer.permit(:account_update, keys: [:company])
    devise_parameter_sanitizer.permit(:account_update, keys: [:university])
    devise_parameter_sanitizer.permit(:account_update, keys: [:high_school])
    devise_parameter_sanitizer.permit(:account_update, keys: [:grad_year])
    devise_parameter_sanitizer.permit(:account_update, keys: [:tutor])
    devise_parameter_sanitizer.permit(:account_update, keys: [:status])
  end
end
