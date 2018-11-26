#!/usr/bin/ruby

print("Entrez votre annee de naissance\n> ")

birth_year = gets.chomp.to_i
year = birth_year

until year > 2017
	puts "Il y a #{Integer(Time.now.year) - year} ans, tu avais #{year - birth_year} ans"
	year = year + 1
end