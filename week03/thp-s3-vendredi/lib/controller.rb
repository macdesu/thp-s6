require "./lib/gossip.rb"
require "./lib/view.rb"
# require "view.rb"

class Controller
	def initialize
		@gossip = Gossip.new
		@view = View.new
	end
	
	def create_gossip
		gossip_data = @view.create
		@gossip.save(gossip_data[0], gossip_data[1])
	end

	def edit_gossip
		@view.list
		gossip_index = @view.edit
		@gossip.remove_entry(gossip_index)
	end
	
	def list_gossip
		@view.list
	end
end