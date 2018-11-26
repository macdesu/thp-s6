#!/usr/bin/ruby

def pyramide
	print "Combien d'etages voulez-vous pour votre pyramide ?\n> "
	height = gets.chomp.to_i
	to_fill = 1
	until height == 0
		(height - 1).times { print " " }
		to_fill.times { print '#' }
		puts ""
		to_fill += 1
		height -= 1
	end
end