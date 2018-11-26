#!/usr/bin/ruby

def define_password
	print "Enter a new password\n> "
	@password = gets.chomp
end

def password_verification
	print "Confirm your password\n> "
	if (gets.chomp == @password)
		return true
	else
		return false
	end
end

def connect(password)
	puts "To log-in, we need to verify your identity"
	if password_verification
		print "Connected !"
	else
		print "Error ! Please, re-enter your password"
	end
end

def perform
	define_password
	password_verification
	connect(@password)
end

perform