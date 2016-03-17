class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def after_sign_out_path_for(resource_or_scope)
  	new_user_session_path
	end

	rescue_from CanCan::AccessDenied do
 	redirect_to root_path, notice: "you are not authorized to access this page"
 end
 
end
