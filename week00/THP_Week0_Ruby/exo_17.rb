#!/usr/bin/ruby

print("Entrez votre annee de naissance\n> ")

birth_year = gets.chomp.to_i
year = birth_year
half_current_age = (Time.now.year.to_i - birth_year) / 2

until year > 2017
	unless year == Time.now.year.to_i - half_current_age
		puts "Il y a #{Integer(Time.now.year) - year} ans, tu avais #{year - birth_year} ans"
	else
		puts "Il y a #{Integer(Time.now.year) - year} ans, tu avais la moitié de l'age que tu as aujourd'hui"
	end
	year = year + 1
end