#!/usr/bin/ruby
=begin
	Cette version est quasi identique a "exo_07_a", mais ajoute "> " devant
	ce que l'utilisateur tappe (pour faire joli, je suppose)
=end

puts "Bonjour, c'est quoi ton blase ?"
print "> "
user_name = gets.chomp
puts user_name