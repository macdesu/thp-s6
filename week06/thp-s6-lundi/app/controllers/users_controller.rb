class UsersController < ApplicationController
	def index
		if session[:name]
			@all_users = User.all
		else
			redirect_to "/"
		end
	end

	def create
		u = User.new
		u.first_name = params[:first_name]
		u.last_name = params[:last_name]
		u.email = params[:email]
		if
			u.save
		else
			flash.notice =  "User created !"
			redirect_to "/sessions"
		end
	end
end