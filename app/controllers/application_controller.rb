class ApplicationController < ActionController::Base
  # Run filters before any action in the application that means before running any controllers run this 
  before_action :configure_permitted_parameters, if: :devise_controller?
  #Run this if the controller is a devise controller, works like a flag
  # This method is used to configure additional parameters for Devise
  # It allows us to permit additional attributes for user sign up and account update like name ke through bhi sign up kar sakta hai
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name])
  end
 
end
