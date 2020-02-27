class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # Permet de rajouter des champs aux params pour le sign_up
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
    # Permet de rajouter des champs aux params pour l'update du compte sans que cela soit obligatoire lors de la création du compte
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :location, :phone_number, :description, :age, :profile_picture])
  end
end
