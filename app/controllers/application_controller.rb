class ApplicationController < ActionController::Base
    before_action :configure_permitted_paramters, if: :devise_controller?

    protected

    def configure_permitted_parameters
        devise_paramater_sanitizer.permit(:sign_up, keys: [:fullname])
        devise_parameter_sanitizer.permit(:account_update, keys: [:fullname])
    end
end
