#!/usr/bin/ruby

print "Entrez votre annee de naissance\n> "
year = gets.chomp.to_i # same as: year = Integer(gets.chomp)

while year <= 2018
	puts year
	year = year + 1
end