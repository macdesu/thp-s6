require "./lib/controller.rb"

class Router
	def initialize
		@controller = Controller.new
	end

	def perform
		system("clear")
		puts "-- WELCOME TO THE GOSSIP PROJECT --"
		while true
			puts "\n\nWhat do you want to do ?\n\n"
			puts "1. Add a new gossip"
			puts "2. Read the existing gossips"
			puts "3. Edit an existing gossip"
			print "4. Exit the app\n> "
			choice = Integer(gets.chomp)
			case choice
			when 1
				system("clear")
				puts "\nYou chose to add a new gossip"
				@controller.create_gossip
				break
			when 2
				system("clear")
				puts "\nYou chose to read the existing gossips"
				@controller.list_gossip
				break
			when 3
				system("clear")
				puts "\nYou chose to edit an existing gossip"
				@controller.edit_gossip
				break
			when 4
				print "\nSee ya !"
				break
			else
				puts "\nERROR: Invalid input"
			end
		end
	end
end