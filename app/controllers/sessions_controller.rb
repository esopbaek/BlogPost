class SessionsController < ApplicationController
	def new
	end

	def create
		user = User.find_by(email: params[:session][:email])
		if user
			session[:user_id] = user.id
			redirect_to root_path
		else
			flash[:notice] = "Unknown user"
			redirect_to root_path
		end
	end

	def destroy
		session[:user_id] = nil
		current_user = nil
		redirect_to new_session_path
	end
end