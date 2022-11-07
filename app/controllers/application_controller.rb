class ApplicationController < ActionController::Base
    before_action :configure_permitted_parameters, if: :devise_controller?

    protected
    
    def configure_permitted_parameters
      added_attrs = [:username, :password, :password_confirmation, :remember_me]
      devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
      devise_parameter_sanitizer.permit :sign_in, keys: [:login, :password]
      devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    end

    def authenticate_active_admin_user!
      authenticate_user!
      unless current_user.superadmin?
        flash[:alert] = "Unauthorized Access!"
        redirect_to root_path
      end
    end
end
