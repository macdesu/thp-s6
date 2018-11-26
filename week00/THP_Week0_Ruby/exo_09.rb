#!/usr/bin/ruby

puts "Bonjour, veuiilez entrer votre prenom"
print "> "
first_name = gets.chomp

puts "Veuiilez maintenant entrer votre nom de famille"
print "> "
last_name = gets.chomp

print "Bonjour, #{first_name + ' ' + last_name}!"