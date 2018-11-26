require "csv"

class View
	def create
		print "Author\n> "
		author = gets.chomp
		print "Content\n> "
		content = gets.chomp
		puts "Gossip saved"
		return [author, content]
	end

	def list
		i = 0
		CSV.foreach("./db/gossip.csv") do | row |
			i += 1
			print String(i) + ". "
			puts row.inspect
		end
	end

	def edit
		print "Which one do you want to edit ?\n> "
		choice = Integer(gets.chomp)
		return choice
	end
end