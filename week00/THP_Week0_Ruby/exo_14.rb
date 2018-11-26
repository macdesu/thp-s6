#!/usr/bin/ruby

print "Entrer un nombre\n> "
nb = Integer(gets.chomp)

until nb < 0
	puts nb
	nb = nb - 1
end