class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?
  rescue_from CanCan::AccessDenied do |exception| #check if the user acces was denied, redirects them to the root and shows an error alert
    redirect_to root_path, :alert => exception.message 
  end
 

  def after_sign_in_path_for(resource)  #Authorization process CanCan and rolify
    case current_user.roles.first.name #Checks the role of current user
      when 'admin'  #If the role is admin it sends them to users_path, which is the pseudo admin screen
        rails_admin_path
      when 'autor' #if the role is bold_moves, it first checks that there is still a stripe subscription for that user and then redirects to bold_moves path (workouts); if not, it makes the role of the user nil revoking him of all access 
        root_path
      else #if there is no role, user is redirected to the root
        root_path
    end
  end

    protected

        def configure_permitted_parameters
            devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:first_name, :last_name, :email, :password, :cargo, :inst, :sitio, :bio, :zona) }
             devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:first_name, :last_name, :email, :password, :cargo, :inst, :sitio, :bio, :zona, :current_password) }
        end
end
