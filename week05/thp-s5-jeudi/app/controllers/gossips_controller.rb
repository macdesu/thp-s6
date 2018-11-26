class GossipsController < ApplicationController
	def index
		@gossips = Gossip.all
	end

	def new
		
	end
end