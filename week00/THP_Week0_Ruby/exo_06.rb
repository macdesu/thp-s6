#!/usr/bin/ruby
=begin
	Ce programme affiche le calcul de la duree moyenne de la formation en heures
	Un 2e puts() a ete ajoute pour donner le meme resultat en minutes cette fois
	Cependant l'operation echouera car la variable "number_of_minutes_in_an_hour" est manquante
	Pour regler ce probleme, il faudrait eventuellement "number_of_minutes_in_an_hour" et de lui assigner 60
	Mais comme je suis beaucoup trop sympa, je l'ai deja fais, il suffit de decommenter la ligne 13 ;)
=end

number_of_hours_worked_per_day = 10
number_of_days_worked_per_week = 5
number_of_weeks_in_THP = 11
# number_of_minutes_in_an_hour = 60

puts "Travail : #{number_of_hours_worked_per_day * number_of_days_worked_per_week * number_of_weeks_in_THP}"
puts "Et en minutes ça fait : #{number_of_minutes_in_an_hour * number_of_hours_worked_per_day * number_of_days_worked_per_week * number_of_weeks_in_THP}"