class SessionsController < ApplicationController
	def new

	end

	def create
		sign_in_as params[:session][:email]
		redirect_to root_path
	end

	def destroy
		session[:current_email] = nil
		redirect_to new_session_path
	end
end