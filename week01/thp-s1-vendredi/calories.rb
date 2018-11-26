#!/usr/bin/ruby

def meal_price(menu)
	price = Hash.new
	menu[:price] = price
	price[:welsh] = 15
	price[:fries] = 4
	price[:beer] = 5
	return (price[:welsh] + price[:fries] + price[:beer])
end

def weight_watchers(meal)
	calories = Hash.new
	calories[:lipids] = 9
	calories[:glucids] = 4
	calories[:proteins] = 4

	return Float((meal[:lipids] * calories[:lipids]) + (meal[:glucids] * calories[:glucids]) + (meal[:proteins] * calories[:proteins]))
end

def meal_weight_watchers(menu)
	menu.values.each do | meal |
		puts "#{menu.key(meal)}: #{weight_watchers(meal)}"
	end
end

def define_meals()
	welsh = Hash.new
	welsh[:lipids] = 38.4
	welsh[:glucids] = 18.3
	welsh[:proteins] = 36.3

	fries = Hash.new
	fries[:lipids] = 15
	fries[:glucids] = 41
	fries[:proteins] = 3.4

	beer = Hash.new
	beer[:lipids] = 0
	beer[:glucids] = 25
	beer[:proteins] = 4

	menu = Hash.new
	menu[:welsh] = welsh
	menu[:fries] = fries
	menu[:beer] = beer

	meal_weight_watchers(menu)
	puts meal_price(menu)
end

def perform()
	define_meals()
end

perform()