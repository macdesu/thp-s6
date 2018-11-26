class Gossip
	attr_reader :author, :content
	def initialize(args)
		@args = args
		@author = args[0]
		@content = args[1]
	end

	def save
		CSV.open("./db/gossip.csv", 'a') do | row |
			row << @args
		end
	end

	def self.find(id)
		csv = CSV.read("./db/gossip.csv")
		return csv[Integer(id)]
	end

	def self.all
		all_gossips = []
		CSV.read("./db/gossip.csv").each do | csv_line |
			all_gossips << Gossip.new(csv_line)
		end
		return all_gossips
	end
end