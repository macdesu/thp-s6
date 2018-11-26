class SessionsController < ApplicationController
	def new
	end

	def create
		if User.find_by(first_name: params[:first_name], email: params[:email]) != nil
			session[:name] = params[:first_name]
			redirect_to "/"
		end
	end

	def destroy
		reset_session
		redirect_to "/"
	end
end