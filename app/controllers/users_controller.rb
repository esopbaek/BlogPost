class UsersController < ApplicationController
	before_action :authenticate, only: [:index]

	def create
	end

	def new
	end

	def index
		@users = User.all
	end
end