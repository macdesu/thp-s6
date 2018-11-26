class RegistrationController < ApplicationController
	def index
	end

	def create
		session[:name] = params[:name]
		User.create(name: params[:name], email: params[:email], password: params[:password])
	end

	def new
		if User.find_by(name: params[:name], password: params[:password]) != nil
			@user_creds = true
			session[:name] = params[:name]
			redirect_to "/"
		end
		@current_user = User.find_by(name: session[:name])
	end

	def edit
	end

	def show
	end

	def update
	end

	def destroy
	end
end