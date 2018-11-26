#!/usr/bin/ruby
# "Pour aller plus loin"

print "Combien d'etages voulez-vous pour votre pyramide ?\n> "
y = gets.chomp.to_i
x = 0
i = 1

while i <= y
	while x < i
		print "#"
		x = x + 1
	end
	puts ""
	x = 0
	i = i + 1
end