#!/usr/bin/ruby

def odd_pyramid
	print "Nombre d'etages\n> "
	height = gets.chomp.to_i
	block = 1
	until height == 0
		(height - 1).times { print " " }
		block.times { print "#" }
		puts ""
		block += 2
		height -= 1
	end
end