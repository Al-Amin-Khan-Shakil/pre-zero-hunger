class Users::RegistrationsController < Devise::RegistrationsController
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  # Configure the permitted parameters for sign up and account update
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :age, :email, :password, :password_confirmation])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :age, :email, :avatar])
  end

  # Override the method for updating resource
  def update_resource(resource, params)
    if params[:password].blank? && params[:password_confirmation].blank?
      resource.update_without_password(params.except(:current_password))
    else
      resource.update_with_password(params)
    end
  end
end
