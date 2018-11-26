#!/usr/bin/ruby
require 'pry'

class User
	def initialize(name)
		@name = name
		puts "Hello, World!\nI am " + @name
	end

	def putkek
		puts "\n\n" + @name + "says: KEK !"
	end
end

kek = User.new("Groot")
kek.putkek()