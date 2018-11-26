class UsersController < ApplicationController
	def list
		@users = User.all
	end

	def create
		u = User.new
		u.username = params[:username]
		u.email = params[:email]
		u.bio = params[:bio]
		u.save
	end
end