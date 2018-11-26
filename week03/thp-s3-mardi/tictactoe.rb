#!/usr/bin/ruby

class Board
	def initialize
		@board = [
			@c1 = BoardCase.new(0),
			@c2 = BoardCase.new(1),
			@c3 = BoardCase.new(2),
			@c4 = BoardCase.new(3),
			@c5 = BoardCase.new(4),
			@c6 = BoardCase.new(5),
			@c7 = BoardCase.new(6),
			@c8 = BoardCase.new(7),
			@c9 = BoardCase.new(8)
		]
	end

	def show_cases
		puts @board
	end

	# WARNING : This is ugly
	def check_patterns
		if @c1.show_value == @c2.show_value && @c2.show_value == @c3.show_value ||
			@c4.show_value == @c5.show_value && @c5.show_value == @c6.show_value ||
			@c7.show_value == @c8.show_value && @c8.show_value == @c9.show_value ||
			@c1.show_value == @c4.show_value && @c4.show_value == @c7.show_value ||
			@c2.show_value == @c5.show_value && @c5.show_value == @c8.show_value ||
			@c3.show_value == @c6.show_value && @c6.show_value == @c9.show_value ||
			@c1.show_value == @c5.show_value && @c5.show_value == @c9.show_value ||
			@c3.show_value == @c5.show_value && @c5.show_value == @c7.show_value
			return true
		end
		return false
	end

	def move(player, position)
		@board[position].update_value(player)
		visualize_board
	end

	def visualize_board
		puts " #{@c1.show_value} | #{@c2.show_value} | #{@c3.show_value}"
		puts "---+---+---"
		puts " #{@c4.show_value} | #{@c5.show_value} | #{@c6.show_value}"
		puts "---+---+---"
		puts " #{@c7.show_value} | #{@c8.show_value} | #{@c9.show_value}\n\n"
	end
end

class BoardCase
	def initialize(initial_value)
		@lock = false
		@value = initial_value
	end

	def update_value(player)
		unless (@lock == true)
			@value = player
			@lock = true
			return true
		end
		puts "Vous ne pouvez pas jouer ici !"
		return false
	end

	def show_value
		return @value
	end
end

class Player
	def initialize(players_img)
		@img = players_img
	end

	def img
		return @img
	end
end

class Game
	def initialize
		@gameboard = Board.new
		@po = Player.new('o')
		@px = Player.new('x')
	end

    def show_board
		@gameboard.visualize_board
	end

	def check_patterns
		@gameboard.check_patterns
	end

    def show_players
    	puts "#{@po} (#{@po.img})"
    	puts "#{@px} (#{@px.img})"
    end

	def start(game)
		game_init(game)
	end

	def move(player, position)
		@gameboard.move(player, position)
	end
end

def game_loop(game, player_signs, player_names)
	puts "QUE LA BATAILLE COMMENCE !"
	i = 0
	winner = ''
	turn = rand(0..1)
	puts "#{player_names[turn]} commence la partie !"
	
	until(check_patterns == true)
		if turn > 1
			turn = 0
		end
		puts "#{player_names[turn]}, a vous !"
		choice = gets.to_i
		until choice >= 0 && choice < 9
			choice = gets.to_i
			puts "Veuillez entrer un choix valide ! (nombre de 0 a 8)"
		end
		game.move(player_signs[turn], choice)
		if check_patterns == true
			winner = player_names[turn]
		end
		turn += 1
		i += 1
		if i == 9
			puts "Egalite !"
			return false
		end
	end
	puts "#{winner} a gagne !"
end

def game_init(game)
	player_signs = ['o', 'x']
	player_names = Array.new
	print "Entrez le nom du 1er joueur\n> "
	player_names[0] = gets.chomp
	print "Entrez le nom du 2e joueur\n> "
	player_names[1] = gets.chomp
	game_loop(game, player_signs, player_names)
end

def perform()
	system("clear")
	game = Game.new
	game.show_board
	game.start(game)
end

perform()
