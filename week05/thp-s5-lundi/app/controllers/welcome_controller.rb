class WelcomeController < ApplicationController
	def user
		@username = params[:username]
		@gossips = Gossip.all.reverse
	end
end