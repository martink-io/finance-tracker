class User::RegistrationsController < Devise::RegistrationsController
  before_filter :configure_permitted_paramteres

  protected
    def configure_permitted_paramteres
      devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
      devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name])
    end
end