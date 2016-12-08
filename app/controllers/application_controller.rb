class ApplicationController < ActionController::Base
  before_action :authenticate_user!

  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, :keys => [:job_title, :company_id, :phone, :first_name, :last_name, :image_url])

    devise_parameter_sanitizer.permit(:account_update, :keys => [:job_title, :company_id, :phone, :first_name, :last_name, :image_url])
  end
end
