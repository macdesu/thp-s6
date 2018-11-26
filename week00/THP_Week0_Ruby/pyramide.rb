#!/usr/bin/ruby

print "Combien d'etages voulez-vous pour votre pyramide ?\n> "
y = gets.chomp.to_i
to_fill = 1
i = 0

until y < 1
	x = y - 1
	until x == 0 
		print " "
		x -= 1
	end
	until i == to_fill
		print "#"
		i += 1
	end
	puts ""
	i = 0
	y -= 1
	to_fill += 1
end