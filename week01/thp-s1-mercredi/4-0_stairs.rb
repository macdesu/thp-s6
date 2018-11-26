#!/usr/bin/ruby

def game_init
	@position = 1
	game()
end

def game
	until @position == 10
		unless @position == 10
			puts "\nAppuyez sur ENTRER pour lancer les des"
			gets && system("clear")
		end
		dice = rand(1..6)
		puts "Vous avez fait " + dice.to_s
		if dice == 1
			if @position > 1
				@position -= 1
				puts "Vous decendez d'un etage..."
			else
				puts "Vous ne pouvez pas decendre plus bas..."
			end
		elsif dice == 5 || dice == 6
			@position += 1
			puts "Vous montez d'un etage !"
		else
			puts "Vous ne bougez pas"
		end
		puts "Votre position actuelle : " + @position.to_s + "e etage.\n\n"
		visualiser()
	end
end

def visualiser
	height = 10
	block = 1
	until height == 0
		if @position == height
			(height - 1).times { print " " }
			print " => "
		else
			(height + 3).times { print " " }
		end
		block.times { print "#" }
		puts ""
		block += 2
		height -= 1
	end
end

def perform
	game_init
end

perform