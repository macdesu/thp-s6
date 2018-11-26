require "csv"

class Gossip
	def save(author, content)
		CSV.open("./db/gossip.csv", 'a') do | row |
			row << [author, content]
		end
	end

	def remove_entry(gossip_index)
		i = 0
		CSV("./db/gossip.csv") do | row |
			i += 1
			print String(i) + ". "
			puts row.inspect
		end
	end

	# Useless for now
	def clear_all
		CSV.open("./db/gossip.csv", 'w') do | row |
			row << ["author", "content"]
			row << ['', '']
		end
	end
end