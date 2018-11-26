#!/usr/bin/ruby

print "Entrez un nombre\n> "
nb = Integer(gets.chomp)
i = 0

until i > nb
	puts i
	i = i + 1
end