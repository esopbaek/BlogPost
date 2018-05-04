class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def authenticate
  	if !signed_in?
  		redirect_to new_session_path
  	end
  end

  def signed_in?
  	current_user
  end

  def current_user
    return unless session[:user_id]
    @current_user ||= User.find(session[:user_id])
  end
end
